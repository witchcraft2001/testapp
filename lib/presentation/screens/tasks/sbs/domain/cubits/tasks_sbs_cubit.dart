// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/mappers/tasks_sbs/app_task_sbs_register_record_mapper.dart';
import 'package:terralinkapp/data/models/requests/api_tasks_sbs_result/api_tasks_sbs_result.dart';
import 'package:terralinkapp/data/repositories/exceptions/repository_exception.dart';
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/data/use_cases/tasks_sbs/clear_cache_tasks_sbs_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks_sbs/complete_cached_task_sbs_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks_sbs/complete_task_sbs_use_case.dart';
import 'package:terralinkapp/data/use_cases/tasks_sbs/get_tasks_sbs_use_case.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_register_record.dart';
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
      _current = _current.copyWith(tasks: tasks);

      emit(TasksSBSCubitState.ready(_current));
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      emit(TasksSBSCubitState.error(S.current.loadingError));
    }
  }

  void changeRecord(AppTaskSBSRegisterRecord updatedRecord) {
    // ToDo 57 Подумать о каком-то ином способе: добавить дочерний кубит, работать не с tasks, а с отдельной map, в которую помещать records, с отличным от "Согласовано" решением
    final updatedTasks = _current.tasks
        .map((task) => task.copyWith(
              consultantsWithRecords: task.consultantsWithRecords
                  .map(
                    (consultant) => consultant.copyWith(
                      registerRecords: consultant.registerRecords
                          .map((record) =>
                              record.recordID == updatedRecord.recordID ? updatedRecord : record)
                          .toList(),
                    ),
                  )
                  .toList(),
            ))
        .toList();

    _current = _current.copyWith(tasks: updatedTasks);

    emit(TasksSBSCubitState.ready(_current));
  }

  Future<void> completeTask(AppTaskSBS task) async {
    _current = _current.copyWith(isLoading: true);

    emit(TasksSBSCubitState.ready(_current));

    try {
      final records = <ApiTasksSBSResult>[];

      for (final consultant in task.consultantsWithRecords) {
        for (final record in consultant.registerRecords) {
          records.add(record.toDao());
        }
      }

      _completeTaskUseCase.run(records).then(
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
