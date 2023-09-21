// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/repositories/exceptions/repository_exception.dart';
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/data/use_cases/tasks/clear_cache_tasks_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks/get_all_tasks_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks/set_cached_task_status_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks/set_task_status_use_case.dart';
import 'package:terralinkapp/domain/task.dart';
import 'package:terralinkapp/domain/task_action.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/screens/tasks/domain/states/tasks_state.dart';

@injectable
class TasksCubit extends Cubit<TasksState> {
  final GetTasksUseCase _getAllTasksUseCase;
  final SetCachedTaskStatusUseCase _setCachedTaskStatusUseCase;
  final SetTaskStatusUseCase _setTaskStatusUseCase;
  final ClearCacheTasksUseCase _clearCacheTasksUseCase;
  final LogService _logService;

  TasksCubit(
    this._getAllTasksUseCase,
    this._setCachedTaskStatusUseCase,
    this._setTaskStatusUseCase,
    this._clearCacheTasksUseCase,
    this._logService,
  ) : super(InitState());

  Future onInit() async {
    emit(LoadingState());
    try {
      final result = await _getAllTasksUseCase.run(null);
      emit(ShowState(tasks: result, pageNumber: 0, search: '', isLoading: false));
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);
      emit(LoadingErrorState(S.current.loadingError));
    }
  }

  void onPageChanged(int number) async {
    if (state is ShowState) {
      emit((state as ShowState).copy(pageNumber: number));
    } else {
      throw Exception("Illegal state");
    }
  }

  Future onSearchChanged(String search) async {
    if (state is ShowState) {
      emit((state as ShowState).copy(search: search, isLoading: true));
      try {
        final result = await _getAllTasksUseCase.run(search);
        emit((state as ShowState).copy(tasks: result, isLoading: false, pageNumber: 0));
      } catch (e, stackTrace) {
        await _logService.recordError(e, stackTrace);
        emit(LoadingErrorState(S.current.loadingError));
      }
    } else {
      throw Exception("Illegal state");
    }
  }

  Future onSetTaskResult(Task task, TaskAction action, String? decision) async {
    if (state is ShowState) {
      emit((state as ShowState).copy(isLoading: true));
      try {
        _setTaskStatusUseCase.run(task.id, action, decision).then(
          (value) => {},
          onError: (error) {
            if (kDebugMode) {
              print(error.toString());
            }
            if (state is ShowState) {
              emit((state as ShowState).copy(toastMessage: S.current.taskSendingError));
            }
          },
        );
        await _setCachedTaskStatusUseCase.run(task.id, action, decision);
        await onSearchChanged((state as ShowState).search);
      } catch (e, stackTrace) {
        await _logService.recordError(e, stackTrace);
        emit(LoadingErrorState(e is RepositoryException ? e.error : S.current.loadingError));
      }
    } else {
      throw Exception("Illegal state");
    }
  }

  void resetToastMessage() {
    if (state is ShowState) {
      emit((state as ShowState).copy(toastMessage: ''));
    }
  }

  Future onRefresh() async {
    if (state is ShowState) {
      _clearCacheTasksUseCase.run();
      await onSearchChanged((state as ShowState).search);
    }
  }
}
