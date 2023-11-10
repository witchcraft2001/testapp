// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/repositories/exceptions/repository_exception.dart';
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/data/use_cases/tasks_sbs_late/clear_cache_tasks_sbs_late_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks_sbs_late/complete_cached_tasks_late_sbs_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks_sbs_late/complete_tasks_sbs_late_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks_sbs_late/get_tasks_sbs_late_use_case.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_late/api_task_sbs_late.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/screens/tasks/sbs_late/domain/states/tasks_sbs_late_cubit_state.dart';

@injectable
class TasksSbsLateCubit extends Cubit<TasksSbsLateCubitState> {
  final GetTasksSbsLateUseCase _getTasksUseCase;
  final CompleteCachedTasksSbsLateUseCase _completeCachedTasksUseCase;
  final CompleteTasksSbsLateUseCase _completeTasksUseCase;
  final ClearCacheTasksSbsLateUseCase _clearCacheTasksUseCase;
  final LogService _logService;

  TasksSbsLateCubit(
    this._getTasksUseCase,
    this._completeCachedTasksUseCase,
    this._completeTasksUseCase,
    this._clearCacheTasksUseCase,
    this._logService,
  ) : super(const TasksSbsLateCubitState.loading());

  TasksSbsLateReadyState _current = const TasksSbsLateReadyState();

  Future<void> init() async {
    emit(const TasksSbsLateCubitState.loading());

    try {
      final tasks = await _getTasksUseCase.run();

      _current = _current.copyWith(
        tasks: tasks,
        isLoading: false,
      );

      emit(TasksSbsLateCubitState.ready(_current));
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      emit(TasksSbsLateCubitState.error(
        S.current.loadingError,
        S.current.internalVPN,
      ));
    }
  }

  Future<void> refresh() async {
    _clearCacheTasksUseCase.run();

    await search(_current.search);
  }

  void resetToastMessage() {
    _current = _current.copyWith(toastMessage: '');

    emit(TasksSbsLateCubitState.ready(_current));
  }

  void changePage(int page) async {
    _current = _current.copyWith(page: page);
    emit(TasksSbsLateCubitState.ready(_current));
  }

  Future<void> search(String search) async {
    _current = _current.copyWith(
      search: search,
      isLoading: true,
    );

    emit(TasksSbsLateCubitState.ready(_current));

    try {
      final tasks = await _getTasksUseCase.run(search);

      _current = _current.copyWith(
        tasks: tasks,
        isLoading: false,
      );

      emit(TasksSbsLateCubitState.ready(_current));
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      emit(TasksSbsLateCubitState.error(
        S.current.loadingError,
        S.current.internalVPN,
      ));
    }
  }

  void changeTask(int index, ApiTaskSbsLate updatedTask) {
    final projectId = updatedTask.projectId;

    final updatedProject = [..._current.tasks[projectId]!]
      ..replaceRange(index, index + 1, [updatedTask]);

    final tasks = {
      ..._current.tasks,
      projectId: [...updatedProject],
    };

    _current = _current.copyWith(tasks: tasks);
    emit(TasksSbsLateCubitState.ready(_current));
  }

  Future<void> completeTasks(int projectId) async {
    _current = _current.copyWith(isLoading: true);
    emit(TasksSbsLateCubitState.ready(_current));

    try {
      final tasks = _current.tasks[projectId]!;

      _completeTasksUseCase.run(tasks).then(
        (_) => {},
        onError: (error) {
          if (kDebugMode) print(error.toString());

          state.whenOrNull(ready: (_) {
            _current = _current.copyWith(toastMessage: S.current.taskSendingError);

            emit(TasksSbsLateCubitState.ready(_current));
          });
        },
      );

      await _completeCachedTasksUseCase.run(tasks);

      await init();
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      emit(TasksSbsLateCubitState.error(
        e is RepositoryException ? e.error : S.current.loadingError,
      ));
    }
  }
}
