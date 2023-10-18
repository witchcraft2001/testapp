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

  const AppTaskSBSConsultantRecord({
    required this.consultantSbsId,
    required this.name,
    required this.totalHours,
    required this.totalHoursDbl,
    required this.hoursType,
    required this.registerRecords,
    this.login,
  });

  AppTaskSBSConsultantRecord copyWith({
    int? consultantSbsId,
    String? name,
    String? totalHours,
    double? totalHoursDbl,
    int? hoursType,
    List<AppTaskSBSRegisterRecord>? registerRecords,
    String? login,
  }) =>
      AppTaskSBSConsultantRecord(
        consultantSbsId: consultantSbsId ?? this.consultantSbsId,
        name: name ?? this.name,
        totalHours: totalHours ?? this.totalHours,
        totalHoursDbl: totalHoursDbl ?? this.totalHoursDbl,
        hoursType: hoursType ?? this.hoursType,
        registerRecords: registerRecords ?? this.registerRecords,
        login: login ?? this.login,
      );
}
