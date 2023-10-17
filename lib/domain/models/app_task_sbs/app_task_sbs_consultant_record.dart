// Project imports:
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_register_record.dart';

class AppTaskSBSConsultantRecord {
  final int consultantSbsId;
  final String name;
  final String totalHours;
  final double totalHoursDbl;
  final int hoursType;
  final List<AppTaskSBSRegisterRecord> registerRecords;
  final String? login;

  const AppTaskSBSConsultantRecord(
    this.consultantSbsId,
    this.name,
    this.totalHours,
    this.totalHoursDbl,
    this.hoursType,
    this.registerRecords,
    this.login,
  );
}
