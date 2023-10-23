// Project imports:
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_consultant.dart';

class AppTaskSBS {
  final int projectId;
  final String projectName;
  final String company;
  final String pmName;
  final String amName;
  final List<AppTaskSBSConsultant> consultants;

  AppTaskSBS({
    required this.projectId,
    required this.projectName,
    required this.company,
    required this.pmName,
    required this.amName,
    required this.consultants,
  });

  AppTaskSBS copyWith({
    int? projectId,
    String? projectName,
    String? company,
    String? pmName,
    String? amName,
    List<AppTaskSBSConsultant>? consultants,
  }) =>
      AppTaskSBS(
        projectId: projectId ?? this.projectId,
        projectName: projectName ?? this.projectName,
        company: company ?? this.company,
        pmName: pmName ?? this.pmName,
        amName: amName ?? this.amName,
        consultants: consultants ?? this.consultants,
      );
}
