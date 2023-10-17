// Project imports:
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_consultant_record.dart';

class AppTaskSBS {
  final int projectSbsId;
  final String projectName;
  final String company;
  final String pmName;
  final String amName;
  final List<AppTaskSBSConsultantRecord> consultantsWithRecords;

  AppTaskSBS(
    this.projectSbsId,
    this.projectName,
    this.company,
    this.pmName,
    this.amName,
    this.consultantsWithRecords,
  );
}
