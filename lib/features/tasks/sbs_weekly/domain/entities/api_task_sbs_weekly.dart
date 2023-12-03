// Project imports:
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/entities/api_task_sbs_weekly_consultant.dart';

class ApiTaskSbsWeekly {
  final int projectId;
  final String projectName;
  final String company;
  final String pmName;
  final String amName;
  final List<ApiTaskSbsWeeklyConsultant> consultants;
  final bool isDelegated;

  ApiTaskSbsWeekly({
    required this.projectId,
    required this.projectName,
    required this.company,
    required this.pmName,
    required this.amName,
    required this.consultants,
    this.isDelegated = false,
  });

  ApiTaskSbsWeekly copyWith({
    int? projectId,
    String? projectName,
    String? company,
    String? pmName,
    String? amName,
    List<ApiTaskSbsWeeklyConsultant>? consultants,
    bool? isDelegated,
  }) =>
      ApiTaskSbsWeekly(
        projectId: projectId ?? this.projectId,
        projectName: projectName ?? this.projectName,
        company: company ?? this.company,
        pmName: pmName ?? this.pmName,
        amName: amName ?? this.amName,
        consultants: consultants ?? this.consultants,
        isDelegated: isDelegated ?? this.isDelegated,
      );
}
