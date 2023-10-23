// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tasks_summary_cubit_state.freezed.dart';

@freezed
class TasksSummaryCubitState with _$TasksSummaryCubitState {
  const factory TasksSummaryCubitState.init() = _TasksSummaryCubitStateInit;
  const factory TasksSummaryCubitState.ready(TasksSummaryState region) =
      _TasksSummaryCubitStateReady;
}

class TasksSummaryState {
  final int eas;
  final int sbs;
  final int vacations;
  final int sickLeaves;

  const TasksSummaryState({
    this.eas = 0,
    this.sbs = 0,
    this.sickLeaves = 0,
    this.vacations = 0,
  });

  TasksSummaryState copyWith({
    int? eas,
    int? sbs,
    int? vacations,
    int? sickLeaves,
  }) =>
      TasksSummaryState(
        eas: eas ?? this.eas,
        sbs: sbs ?? this.sbs,
        vacations: vacations ?? this.vacations,
        sickLeaves: sickLeaves ?? this.sickLeaves,
      );
}
