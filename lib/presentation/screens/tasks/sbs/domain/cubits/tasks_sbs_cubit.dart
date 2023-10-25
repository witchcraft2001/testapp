// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/iterable_extensions.dart';
import 'package:terralinkapp/data/repositories/exceptions/repository_exception.dart';
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/data/use_cases/tasks_sbs/clear_cache_tasks_sbs_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks_sbs/complete_cached_task_sbs_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks_sbs/complete_task_sbs_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks_sbs/get_tasks_sbs_use_case.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_consultant.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_record.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/screens/tasks/sbs/domain/states/tasks_sbs_cubit_state.dart';

@injectable
class TasksSBSCubit extends Cubit<TasksSBSCubitState> {
  final GetTasksSBSUseCase _getTasksUseCase;
  final CompleteCachedTaskSBSUseCase _completeCachedTaskUseCase;
  final CompleteTaskSBSUseCase _completeTaskUseCase;
  final ClearCacheTasksSBSUseCase _clearCacheTasksUseCase;
  final LogService _logService;

  TasksSBSCubit(
    this._getTasksUseCase,
    this._clearCacheTasksUseCase,
    this._completeCachedTaskUseCase,
    this._completeTaskUseCase,
    this._logService,
  ) : super(const TasksSBSCubitState.loading());

  TasksSBSState _current = const TasksSBSState();

  Future<void> init() async {
    emit(const TasksSBSCubitState.loading());

    try {
      final tasks = await _getTasksUseCase.run();

      _current = _current.copyWith(
        tasks: tasks,
        isLoading: false,
      );

      emit(TasksSBSCubitState.ready(_current));
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      emit(TasksSBSCubitState.error(S.current.loadingError));
    }
  }

  Future<void> refresh() async {
    _clearCacheTasksUseCase.run();

    await init();
  }

  void resetToastMessage() {
    _current = _current.copyWith(toastMessage: '');

    emit(TasksSBSCubitState.ready(_current));
  }

  void changePage(int page) async {
    _current = _current.copyWith(page: page);

    emit(TasksSBSCubitState.ready(_current));
  }

  // ToDo 57 определиться по каким полям будем искать
  void search() {}

  void changeConsultant(
    int projectId,
    int consultantIndex,
    AppTaskSBSConsultant consultant,
    AppTaskSBSResultType result,
    String rejectReason,
  ) {
    // Определение задачи-проекта, для которого производится изменение решения по часам консультанта
    AppTaskSBS? task = _current.tasks.firstWhereOrNull((task) => task.projectId == projectId);

    if (task != null) {
      final taskIndex = _current.tasks.indexOf(task);

      // Обновление данных консультанта и записей часов
      final updatedConsultant = consultant.copyWith(
        result: result,
        rejectReason: rejectReason,
        records: consultant.records
            .map((record) => record.copyWith(
                  result: result,
                  rejectReason: rejectReason,
                ))
            .toList(),
      );

      final consultansts = [...task.consultants]
        ..replaceRange(consultantIndex, consultantIndex + 1, [updatedConsultant]);

      // Обновление списка задач-проектов
      task = task.copyWith(consultants: consultansts);
      final tasks = [..._current.tasks]..replaceRange(taskIndex, taskIndex + 1, [task]);

      _current = _current.copyWith(tasks: tasks);

      emit(TasksSBSCubitState.ready(_current));
    }
  }

  void changeRecord(AppTaskSBSRecord updatedRecord) {
    // Определение задачи-проекта, для которого производится изменение решения по часам консультанта
    AppTaskSBS? task =
        _current.tasks.firstWhereOrNull((task) => task.projectId == updatedRecord.projectId);

    if (task != null) {
      final taskIndex = _current.tasks.indexOf(task);

      // Определение кунсультанта, для записи которого производится изменение решения по часам
      AppTaskSBSConsultant? consultant = task.consultants.firstWhereOrNull((consultant) =>
          consultant.consultantId == updatedRecord.consultantId &&
          consultant.hoursType == updatedRecord.hoursType);

      if (consultant != null) {
        final consultantIndex = task.consultants.indexOf(consultant);

        // Обновление данных часов
        final records = consultant.records
            .map((record) => record.recordId == updatedRecord.recordId ? updatedRecord : record)
            .toList();

        // Проверка результатов для определения суммарного статуса
        final isUnionResult = records.every((record) => record.result == updatedRecord.result);

        // Обновление данных консультанта и часов
        consultant = consultant.copyWith(
          result: isUnionResult ? updatedRecord.result : AppTaskSBSResultType.none,
          rejectReason: '',
          records: records,
        );

        final consultansts = [...task.consultants]
          ..replaceRange(consultantIndex, consultantIndex + 1, [consultant]);

        // Обновление списка задач-проектов
        task = task.copyWith(consultants: consultansts);
        final tasks = [..._current.tasks]..replaceRange(taskIndex, taskIndex + 1, [task]);

        _current = _current.copyWith(tasks: tasks);

        emit(TasksSBSCubitState.ready(_current));
      }
    }
  }

  Future<void> completeTask(AppTaskSBS task) async {
    _current = _current.copyWith(isLoading: true);

    emit(TasksSBSCubitState.ready(_current));

    try {
      _completeTaskUseCase.run(task).then(
        (_) => {},
        onError: (error) {
          if (kDebugMode) print(error.toString());

          state.whenOrNull(ready: (_) {
            _current = _current.copyWith(toastMessage: S.current.taskSendingError);

            emit(TasksSBSCubitState.ready(_current));
          });
        },
      );

      await _completeCachedTaskUseCase.run(task);

      await init();
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      emit(TasksSBSCubitState.error(e is RepositoryException ? e.error : S.current.loadingError));
    }
  }
}
