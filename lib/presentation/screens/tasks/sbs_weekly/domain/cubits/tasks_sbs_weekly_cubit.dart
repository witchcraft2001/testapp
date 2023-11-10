// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/iterable_extensions.dart';
import 'package:terralinkapp/data/repositories/exceptions/repository_exception.dart';
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/data/use_cases/tasks_sbs_weekly/clear_cache_tasks_sbs_weekly_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks_sbs_weekly/complete_cached_task_sbs_weekly_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks_sbs_weekly/complete_task_sbs_weekly_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks_sbs_weekly/get_tasks_sbs_weekly_use_case.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_weekly/api_task_sbs_weekly.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_weekly/api_task_sbs_weekly_consultant.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_weekly/api_task_sbs_weekly_record.dart';
import 'package:terralinkapp/domain/entities/app_task_sbs_result_type.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/screens/tasks/sbs_weekly/domain/states/tasks_sbs_weekly_cubit_state.dart';

@injectable
class TasksSbsWeeklyCubit extends Cubit<TasksSbsWeeklyCubitState> {
  final GetTasksSbsWeeklyUseCase _getTasksUseCase;
  final CompleteCachedTaskSbsWeeklyUseCase _completeCachedTaskUseCase;
  final CompleteTaskSbsWeeklyUseCase _completeTaskUseCase;
  final ClearCacheTasksSbsWeeklyUseCase _clearCacheTasksUseCase;
  final LogService _logService;

  TasksSbsWeeklyCubit(
    this._getTasksUseCase,
    this._clearCacheTasksUseCase,
    this._completeCachedTaskUseCase,
    this._completeTaskUseCase,
    this._logService,
  ) : super(const TasksSbsWeeklyCubitState.loading());

  TasksSbsWeeklyReadyData _current = const TasksSbsWeeklyReadyData();

  Future<void> init() async {
    emit(const TasksSbsWeeklyCubitState.loading());

    try {
      final tasks = await _getTasksUseCase.run();

      _current = _current.copyWith(
        tasks: tasks,
        isLoading: false,
      );

      emit(TasksSbsWeeklyCubitState.ready(_current));
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      emit(TasksSbsWeeklyCubitState.error(
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

    emit(TasksSbsWeeklyCubitState.ready(_current));
  }

  void changePage(int page) async {
    _current = _current.copyWith(page: page);

    emit(TasksSbsWeeklyCubitState.ready(_current));
  }

  Future<void> search(String search) async {
    _current = _current.copyWith(
      search: search,
      isLoading: true,
    );

    emit(TasksSbsWeeklyCubitState.ready(_current));

    try {
      final tasks = await _getTasksUseCase.run(search);

      _current = _current.copyWith(
        tasks: tasks,
        isLoading: false,
      );

      emit(TasksSbsWeeklyCubitState.ready(_current));
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      emit(TasksSbsWeeklyCubitState.error(
        S.current.loadingError,
        S.current.internalVPN,
      ));
    }
  }

  void changeConsultant(
    int projectId,
    int consultantIndex,
    ApiTaskSbsWeeklyConsultant consultant,
    AppTaskSbsResultType result,
    String rejectReason,
  ) {
    // Определение задачи-проекта, для которого производится изменение решения по часам консультанта
    ApiTaskSbsWeekly? task = _current.tasks.firstWhereOrNull((task) => task.projectId == projectId);

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

      emit(TasksSbsWeeklyCubitState.ready(_current));
    }
  }

  void changeRecord(ApiTaskSbsWeeklyRecord updatedRecord) {
    // Определение задачи-проекта, для которого производится изменение решения по часам консультанта
    ApiTaskSbsWeekly? task =
        _current.tasks.firstWhereOrNull((task) => task.projectId == updatedRecord.projectId);

    if (task != null) {
      final taskIndex = _current.tasks.indexOf(task);

      // Определение кунсультанта, для записи которого производится изменение решения по часам
      ApiTaskSbsWeeklyConsultant? consultant = task.consultants.firstWhereOrNull((consultant) =>
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
          result: isUnionResult ? updatedRecord.result : AppTaskSbsResultType.none,
          rejectReason: '',
          records: records,
        );

        final consultansts = [...task.consultants]
          ..replaceRange(consultantIndex, consultantIndex + 1, [consultant]);

        // Обновление списка задач-проектов
        task = task.copyWith(consultants: consultansts);
        final tasks = [..._current.tasks]..replaceRange(taskIndex, taskIndex + 1, [task]);

        _current = _current.copyWith(tasks: tasks);

        emit(TasksSbsWeeklyCubitState.ready(_current));
      }
    }
  }

  Future<void> completeTask(ApiTaskSbsWeekly task) async {
    _current = _current.copyWith(isLoading: true);

    emit(TasksSbsWeeklyCubitState.ready(_current));

    try {
      _completeTaskUseCase.run(task).then(
        (_) => {},
        onError: (error) {
          if (kDebugMode) print(error.toString());

          state.whenOrNull(ready: (_) {
            _current = _current.copyWith(toastMessage: S.current.taskSendingError);

            emit(TasksSbsWeeklyCubitState.ready(_current));
          });
        },
      );

      await _completeCachedTaskUseCase.run(task);

      await init();
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      emit(TasksSbsWeeklyCubitState.error(
        e is RepositoryException ? e.error : S.current.loadingError,
      ));
    }
  }
}
