// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/use_cases/tasks_sbs_late/get_tasks_sbs_late_use_case.dart';
import 'package:terralinkapp/domain/entities/api_task_summary/api_tasks_summary_system.dart';
import 'package:terralinkapp/domain/repositories/tasks_sbs_repository.dart';
import 'package:terralinkapp/presentation/screens/tasks/summary/domain/states/tasks_summary_cubit_state.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class TasksSbsLateSummaryCubit extends Cubit<TasksSummaryCubitState> {
  final GetTasksSbsLateUseCase _getTasksSbsLateUseCase;
  final TasksSbsRepository _sbsRepository;

  late StreamSubscription _sbsSubscription;

  TasksSbsLateSummaryCubit(
    this._getTasksSbsLateUseCase,
    this._sbsRepository,
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
      final sbsLate = await _getTasksSbsLateUseCase.run();

      _current = _current.copyWith(count: sbsLate.length);
    } finally {
      emit(TasksSummaryCubitState.ready(_current));
    }
  }

  @override
  Future<void> close() async {
    _sbsSubscription.cancel();

    super.close();
  }
}
