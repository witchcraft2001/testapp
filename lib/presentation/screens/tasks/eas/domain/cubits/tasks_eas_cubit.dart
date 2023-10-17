// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/repositories/exceptions/repository_exception.dart';
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/data/use_cases/tasks_eas/clear_cache_tasks_eas_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks_eas/complete_cached_task_eas_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks_eas/complete_task_eas_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks_eas/get_tasks_eas_use_case.dart';
import 'package:terralinkapp/domain/models/app_task_eas/app_task_eas.dart';
import 'package:terralinkapp/domain/models/app_task_eas/app_task_eas_action.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/screens/tasks/eas/domain/states/tasks_eas_cubit_state.dart';

@injectable
class TasksEASCubit extends Cubit<TasksState> {
  final GetTasksEASUseCase _getTasksUseCase;
  final CompleteCachedTaskEASUseCase _completeCachedTaskUseCase;
  final CompleteTaskEASUseCase _completeTaskUseCase;
  final ClearCacheTasksEASUseCase _clearCacheTasksUseCase;
  final LogService _logService;

  TasksEASCubit(
    this._getTasksUseCase,
    this._completeCachedTaskUseCase,
    this._completeTaskUseCase,
    this._clearCacheTasksUseCase,
    this._logService,
  ) : super(InitState());

  Future<void> init() async {
    emit(LoadingState());

    try {
      final List<AppTaskEAS> result = await _getTasksUseCase.run();
      emit(ShowState(tasks: result, pageNumber: 0, search: '', isLoading: false));
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);
      emit(LoadingErrorState(S.current.loadingError));
    }
  }

  void changePage(int page) async {
    if (state is ShowState) {
      emit((state as ShowState).copy(pageNumber: page));
    } else {
      throw Exception("Illegal state");
    }
  }

  Future<void> search(String search) async {
    if (state is ShowState) {
      emit((state as ShowState).copy(search: search, isLoading: true));

      try {
        final result = await _getTasksUseCase.run(search);
        emit((state as ShowState).copy(tasks: result, isLoading: false, pageNumber: 0));
      } catch (e, stackTrace) {
        await _logService.recordError(e, stackTrace);
        emit(LoadingErrorState(S.current.loadingError));
      }
    } else {
      throw Exception("Illegal state");
    }
  }

  Future<void> completeTask(
    AppTaskEAS task,
    AppTaskEASAction action,
    String? decision,
  ) async {
    if (state is ShowState) {
      emit((state as ShowState).copy(isLoading: true));

      try {
        _completeTaskUseCase.run(task.id, action, decision).then(
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

        await _completeCachedTaskUseCase.run(task.id, action, decision);
        await search((state as ShowState).search);
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

  Future<void> refresh() async {
    if (state is ShowState) {
      _clearCacheTasksUseCase.run();
      await search((state as ShowState).search);
    }
  }
}
