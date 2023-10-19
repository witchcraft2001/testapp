// Project imports:
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_record.dart';

class AppTaskSBSConsultant {
  final int consultantId;
  final String name;
  final String totalHours;
  final double totalHoursDbl;
  final int hoursType;
  final List<AppTaskSBSRecord> records;
  final String? login;

  const AppTaskSBSConsultant({
    required this.consultantId,
    required this.name,
    required this.totalHours,
    required this.totalHoursDbl,
    required this.hoursType,
    required this.records,
    this.login,
  });

  AppTaskSBSConsultant copyWith({
    int? consultantId,
    String? name,
    String? totalHours,
    double? totalHoursDbl,
    int? hoursType,
    List<AppTaskSBSRecord>? records,
    String? login,
  }) =>
      AppTaskSBSConsultant(
        consultantId: consultantId ?? this.consultantId,
        name: name ?? this.name,
        totalHours: totalHours ?? this.totalHours,
        totalHoursDbl: totalHoursDbl ?? this.totalHoursDbl,
        hoursType: hoursType ?? this.hoursType,
        records: records ?? this.records,
        login: login ?? this.login,
      );
}
