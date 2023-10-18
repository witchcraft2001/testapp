// Project imports:
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_consultant_record.dart';

class AppTaskSBS {
  final int projectSbsId;
  final String projectName;
  final String company;
  final String pmName;
  final String amName;
  final List<AppTaskSBSConsultantRecord> consultantsWithRecords;

  AppTaskSBS({
    required this.projectSbsId,
    required this.projectName,
    required this.company,
    required this.pmName,
    required this.amName,
    required this.consultantsWithRecords,
  });

  AppTaskSBS copyWith({
    int? projectSbsId,
    String? projectName,
    String? company,
    String? pmName,
    String? amName,
    List<AppTaskSBSConsultantRecord>? consultantsWithRecords,
  }) =>
      AppTaskSBS(
        projectSbsId: projectSbsId ?? this.projectSbsId,
        projectName: projectName ?? this.projectName,
        company: company ?? this.company,
        pmName: pmName ?? this.pmName,
        amName: amName ?? this.amName,
        consultantsWithRecords: consultantsWithRecords ?? this.consultantsWithRecords,
      );
}
