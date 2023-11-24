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
import 'package:terralinkapp/domain/entities/api_task_sbs_late/app_project_sbs_late.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/domain/states/tasks_cubit_state.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/domain/states/tasks_state_ready_data.dart';

@injectable
class TasksSbsLateCubit extends Cubit<TasksCubitState<AppProjectSbsLate>> {
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
  ) : super(const TasksCubitState.loading());

  TasksStateReadyData<AppProjectSbsLate> _current = const TasksStateReadyData<AppProjectSbsLate>();

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

      emit(TasksCubitState.error(S.current.loadingError));
    }
  }

  void changeTask(int index, ApiTaskSbsLate updatedTask) {
    final projectId = updatedTask.projectId;

    // Поиск проекта, для запячи которого выполняется обновление
    AppProjectSbsLate project =
        _current.tasks.firstWhere((element) => element.projectId == projectId);
    final projectIndex = _current.tasks.indexOf(project);

    // Обновление записей проекта
    final records = [...project.records]..replaceRange(index, index + 1, [updatedTask]);

    // Обновление проекта
    project = project.copyWith(records: records);

    // Обновление проектов
    final tasks = [..._current.tasks]..replaceRange(projectIndex, projectIndex + 1, [project]);

    _current = _current.copyWith(tasks: tasks);
    emit(TasksCubitState.ready(_current));
  }

  Future<void> completeTasks(int projectId) async {
    _current = _current.copyWith(isLoading: true);
    emit(TasksCubitState.ready(_current));

    try {
      final tasks = _current.tasks.firstWhere((element) => element.projectId == projectId).records;

      _completeTasksUseCase.run(tasks).then(
        (_) => {},
        onError: (error) {
          if (kDebugMode) print(error.toString());

          state.whenOrNull(ready: (_) {
            _current = _current.copyWith(toastMessage: S.current.taskSendingError);

            emit(TasksCubitState.ready(_current));
          });
        },
      );

      await _completeCachedTasksUseCase.run(tasks);

      await search(_current.search);
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      emit(TasksCubitState.error(
        e is RepositoryException ? e.error : S.current.loadingError,
      ));
    }
  }
}
