// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/features/tasks/sbs/data/repositories/tasks_sbs_repository.dart';
import 'package:terralinkapp/features/tasks/sbs_late/domain/use_cases/clear_cache_tasks_sbs_late_use_case.dart';
import 'package:terralinkapp/features/tasks/sbs_late/domain/use_cases/get_tasks_sbs_late_use_case.dart';
import 'package:terralinkapp/features/tasks/summary/domain/entities/api_tasks_summary_system.dart';
import 'package:terralinkapp/features/tasks/summary/domain/states/tasks_summary_cubit_state.dart';

@injectable
class TasksSbsLateSummaryCubit extends Cubit<TasksSummaryCubitState> {
  final GetTasksSbsLateUseCase _getTasksSbsLateUseCase;
  final ClearCacheTasksSbsLateUseCase _clearCacheTasksUseCase;
  final TasksSbsRepository _sbsRepository;
  final LogService _logService;

  late StreamSubscription _sbsSubscription;

  TasksSbsLateSummaryCubit(
    this._getTasksSbsLateUseCase,
    this._clearCacheTasksUseCase,
    this._sbsRepository,
    this._logService,
  ) : super(const TasksSummaryCubitState.init()) {
    _sbsSubscription = _sbsRepository.stream.listen((value) {
      state.whenOrNull(ready: (data) {
        _current = data.copyWith(
          count: value[ApiTasksSummarySystem.sbsLate],
        );

        emit(TasksSummaryCubitState.ready(_current));
      });
    });
  }

  TasksSummaryStateReadyData _current = const TasksSummaryStateReadyData();

  Future<void> init() async {
    emit(const TasksSummaryCubitState.init());

    try {
      final sbsLate = await _getTasksSbsLateUseCase();

      _current = _current.copyWith(count: sbsLate.length);
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);
    } finally {
      emit(TasksSummaryCubitState.ready(_current));
    }
  }

  Future<void> refresh() async {
    _clearCacheTasksUseCase();

    await init();
  }

  @override
  Future<void> close() async {
    _sbsSubscription.cancel();

    super.close();
  }
}
