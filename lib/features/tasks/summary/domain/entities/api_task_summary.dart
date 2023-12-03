// Project imports:
import 'package:terralinkapp/features/tasks/summary/domain/entities/api_tasks_summary_system.dart';

class ApiTaskSummary {
  final String title;
  final ApiTasksSummarySystem system;
  final int count;

  ApiTaskSummary({
    required this.title,
    required this.system,
    required this.count,
  });

  ApiTaskSummary copyWith({
    String? title,
    ApiTasksSummarySystem? system,
    int? count,
  }) =>
      ApiTaskSummary(
        title: title ?? this.title,
        system: system ?? this.system,
        count: count ?? this.count,
      );
}
