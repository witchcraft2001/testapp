// Project imports:
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_record.dart';

class AppTaskSBSConsultant {
  final int consultantId;
  final String name;
  final String totalHours;
  final double totalHoursDbl;
  final AppTaskSBSConsultantHoursType hoursType;
  final List<AppTaskSBSRecord> records;
  final String? login;
  final AppTaskSBSResultType result;
  final String rejectReason;

  const AppTaskSBSConsultant({
    required this.consultantId,
    required this.name,
    required this.totalHours,
    required this.totalHoursDbl,
    required this.hoursType,
    required this.records,
    required this.result,
    required this.rejectReason,
    this.login,
  });

  AppTaskSBSConsultant copyWith({
    int? consultantId,
    String? name,
    String? totalHours,
    double? totalHoursDbl,
    AppTaskSBSConsultantHoursType? hoursType,
    List<AppTaskSBSRecord>? records,
    AppTaskSBSResultType? result,
    String? rejectReason,
    String? login,
  }) =>
      AppTaskSBSConsultant(
        consultantId: consultantId ?? this.consultantId,
        name: name ?? this.name,
        totalHours: totalHours ?? this.totalHours,
        totalHoursDbl: totalHoursDbl ?? this.totalHoursDbl,
        hoursType: hoursType ?? this.hoursType,
        records: records ?? this.records,
        result: result ?? this.result,
        rejectReason: rejectReason ?? this.rejectReason,
        login: login ?? this.login,
      );
}

enum AppTaskSBSConsultantHoursType { unpaid, paid, ovt, ovtAndHalf }
