// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/repository_exception.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/features/tasks/common/domain/states/tasks_cubit_state.dart';
import 'package:terralinkapp/features/tasks/common/domain/states/tasks_state_ready_data.dart';
import 'package:terralinkapp/features/tasks/vacations/data/use_cases/clear_cache_tasks_vacation_use_case.dart';
import 'package:terralinkapp/features/tasks/vacations/data/use_cases/complete_cached_task_vacation_use_case.dart';
import 'package:terralinkapp/features/tasks/vacations/data/use_cases/complete_task_vacation_use_case.dart';
import 'package:terralinkapp/features/tasks/vacations/data/use_cases/get_tasks_vacation_use_case.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/entities/api_task_vacation.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/entities/api_task_vacation_action.dart';
import 'package:terralinkapp/generated/l10n.dart';

@injectable
class TasksVacationCubit extends Cubit<TasksCubitState<ApiTaskVacation>> {
  final GetTasksVacationUseCase _getTasksUseCase;
  final CompleteCachedTaskVacationUseCase _completeCachedTaskUseCase;
  final CompleteTaskVacationUseCase _completeTaskUseCase;
  final ClearCacheTasksVacationUseCase _clearCacheTasksUseCase;
  final LogService _logService;

  TasksVacationCubit(
    this._getTasksUseCase,
    this._completeCachedTaskUseCase,
    this._completeTaskUseCase,
    this._clearCacheTasksUseCase,
    this._logService,
  ) : super(const TasksCubitState.loading());

  TasksStateReadyData<ApiTaskVacation> _current = const TasksStateReadyData<ApiTaskVacation>();

  Future<void> init() async {
    emit(const TasksCubitState.loading());

    try {
      final tasks = await _getTasksUseCase.run();

      _current = _current.copyWith(
        tasks: tasks,
        isLoading: false,
      );

      emit(TasksCubitState.ready(_current));
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      emit(TasksCubitState.error(S.current.loadingError));
    }
  }

  Future<void> refresh() async {
    _clearCacheTasksUseCase.run();

    await search(_current.search);
  }

  void resetToastMessage() {
    _current = _current.copyWith(toastMessage: '');

    emit(TasksCubitState.ready(_current));
  }

  void changePage(int page) async {
    _current = _current.copyWith(page: page + 1);

    emit(TasksCubitState.ready(_current));
  }

  Future<void> search(String search) async {
    _current = _current.copyWith(
      search: search,
      isLoading: true,
    );

    emit(TasksCubitState.ready(_current));

    try {
      final tasks = await _getTasksUseCase.run(search);

      _current = _current.copyWith(
        tasks: tasks,
        page: search.isNotEmpty ? 1 : null,
        isLoading: false,
      );

      emit(TasksCubitState.ready(_current));
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      emit(TasksCubitState.error(
        S.current.loadingError,
      ));
    }
  }

  Future<void> completeTask(
    ApiTaskVacation task,
    ApiTaskVacationAction action,
    String? decision,
  ) async {
    _current = _current.copyWith(isLoading: true);

    emit(TasksCubitState.ready(_current));

    try {
      _completeTaskUseCase.run(action, decision).then(
        (_) => {},
        onError: (error) {
          if (kDebugMode) print(error.toString());

          state.whenOrNull(ready: (_) {
            _current = _current.copyWith(toastMessage: S.current.taskSendingError);

            emit(TasksCubitState.ready(_current));
          });
        },
      );

      await _completeCachedTaskUseCase.run(task.id);

      await search(_current.search);
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      emit(TasksCubitState.error(
        e is RepositoryException ? e.error : S.current.loadingError,
      ));
    }
  }
}
