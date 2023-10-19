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
    const TasksSBSCubitState.loading();

    try {
      final tasks = await _getTasksUseCase.run();

      final completedRecords = <int, AppTaskSBSRecord>{};

      for (final task in tasks) {
        for (final consultant in task.consultants) {
          for (final record in consultant.records) {
            completedRecords.addAll({record.recordId: record});
          }
        }
      }

      _current = _current.copyWith(
        tasks: tasks,
        completedRecords: completedRecords,
      );

      emit(TasksSBSCubitState.ready(_current));
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      emit(TasksSBSCubitState.error(S.current.loadingError));
    }
  }

  void changeConsultant(
    int projectId,
    int consultantId,
    AppTaskSBSRegisterRecordResultType result,
    String rejectReason,
  ) {
    final completedRecords = {..._current.completedRecords};

    completedRecords.removeWhere((key, record) {
      return record.consultantId == consultantId && record.projectId == projectId;
    });

    final records = _current.tasks
        .firstWhereOrNull((task) => task.projectId == projectId)
        ?.consultants
        .firstWhereOrNull((consultant) => consultant.consultantId == consultantId)
        ?.records;

    if (records != null && records.isNotEmpty) {
      for (final record in records) {
        completedRecords.addAll({
          record.recordId: record.copyWith(
            result: result,
            rejectReason: rejectReason,
          ),
        });
      }
    }

    _current = _current.copyWith(completedRecords: completedRecords);

    emit(TasksSBSCubitState.ready(_current));
  }

  void changeRecord(AppTaskSBSRecord record) {
    final completedRecords = {..._current.completedRecords};

    if (completedRecords.keys.contains(record.recordId)) {
      if (record.result == AppTaskSBSRegisterRecordResultType.waiting) {
        completedRecords.remove(record.recordId);
      } else {
        completedRecords.update(record.recordId, (_) => record);
      }
    } else {
      completedRecords.addAll({record.recordId: record});
    }

    _current = _current.copyWith(completedRecords: completedRecords);

    emit(TasksSBSCubitState.ready(_current));
  }

  Future<void> completeTask(int projectId) async {
    _current = _current.copyWith(isLoading: true);

    emit(TasksSBSCubitState.ready(_current));

    try {
      final records = <AppTaskSBSRecord>[];

      for (final record in _current.completedRecords.values) {
        if (record.projectId == projectId) {
          records.add(record);
        }
      }

      _completeTaskUseCase.run([]).then(
        (_) => {},
        onError: (error) {
          if (kDebugMode) print(error.toString());

          // ToDo 57 добавить toastMessage
          // if (state is ShowState) {
          //   emit((state as ShowState).copy(toastMessage: S.current.taskSendingError));
          // }
        },
      );

      await _completeCachedTaskUseCase.run(records);

      _current = _current.copyWith(isLoading: false);
      await init();
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      emit(TasksSBSCubitState.error(e is RepositoryException ? e.error : S.current.loadingError));
    }
  }

  Future<void> refresh() async {
    _clearCacheTasksUseCase.run();

    // ToDO 57 не забыть про поиск
    await init();
  }

  void changePage(int page) async {
    _current = _current.copyWith(page: page);

    emit(TasksSBSCubitState.ready(_current));
  }
}
