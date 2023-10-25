// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/presentation/screens/tasks/summary/domain/states/tasks_summary_cubit_state.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class TasksSummaryCubit extends Cubit<TasksSummaryCubitState> {
  TasksSummaryCubit() : super(const TasksSummaryCubitState.init());

  TasksSummaryState _current = const TasksSummaryState();

  Future<void> init() async {
    emit(const TasksSummaryCubitState.init());

    // ToDo получение счетчиков (пока ждем апи, решено не выводить счетчики)
    _current = _current.copyWith(
      eas: 0,
      sbs: 0,
    );

    emit(TasksSummaryCubitState.ready(_current));
  }
}
