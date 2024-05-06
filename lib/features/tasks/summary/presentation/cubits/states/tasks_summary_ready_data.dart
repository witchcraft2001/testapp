class TasksSummaryReadyData {
  final int count;

  const TasksSummaryReadyData({
    this.count = 0,
  });

  TasksSummaryReadyData copyWith({
    int? count,
  }) =>
      TasksSummaryReadyData(
        count: count ?? this.count,
      );
}
