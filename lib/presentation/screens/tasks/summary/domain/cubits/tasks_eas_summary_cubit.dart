// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/use_cases/tasks_eas/get_tasks_eas_use_case.dart';
import 'package:terralinkapp/domain/repositories/tasks_eas_repository.dart';
import 'package:terralinkapp/presentation/screens/tasks/summary/domain/states/tasks_summary_cubit_state.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class TasksEasSummaryCubit extends Cubit<TasksSummaryCubitState> {
  final GetTasksEasUseCase _getTasksEasUseCase;
  final TasksEasRepository _easRepository;

  late StreamSubscription _easSubscription;

  TasksEasSummaryCubit(
    this._getTasksEasUseCase,
    this._easRepository,
  ) : super(const TasksSummaryCubitState.init()) {
    _easSubscription = _easRepository.stream.listen((value) {
      _current = _current.copyWith(
        count: value,
      );

      emit(TasksSummaryCubitState.ready(_current));
    });
  }

  TasksSummaryStateReadyData _current = const TasksSummaryStateReadyData();

  Future<void> init() async {
    emit(const TasksSummaryCubitState.init());

    try {
      final eas = await _getTasksEasUseCase.run();

      _current = _current.copyWith(count: eas.length);
    } finally {
      emit(TasksSummaryCubitState.ready(_current));
    }
  }

  @override
  Future<void> close() async {
    _easSubscription.cancel();

    super.close();
  }
}
