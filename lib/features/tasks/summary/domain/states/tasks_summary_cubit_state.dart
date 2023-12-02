// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tasks_summary_cubit_state.freezed.dart';

@freezed
class TasksSummaryCubitState with _$TasksSummaryCubitState {
  const factory TasksSummaryCubitState.init() = _TasksSummaryCubitStateInit;
  const factory TasksSummaryCubitState.ready(TasksSummaryStateReadyData data) =
      _TasksSummaryCubitStateReady;
}

class TasksSummaryStateReadyData {
  final int count;

  const TasksSummaryStateReadyData({
    this.count = 0,
  });

  TasksSummaryStateReadyData copyWith({
    int? count,
  }) =>
      TasksSummaryStateReadyData(
        count: count ?? this.count,
      );
}
