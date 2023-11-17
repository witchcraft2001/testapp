// Project imports:
import 'package:terralinkapp/domain/entities/api_task_sbs_late/api_task_sbs_late.dart';

class AppProjectSbsLate {
  final int projectId;
  final List<ApiTaskSbsLate> records;

  AppProjectSbsLate({
    required this.projectId,
    required this.records,
  });

  AppProjectSbsLate copyWith({
    int? projectId,
    List<ApiTaskSbsLate>? records,
  }) =>
      AppProjectSbsLate(
        projectId: projectId ?? this.projectId,
        records: records ?? this.records,
      );
}
