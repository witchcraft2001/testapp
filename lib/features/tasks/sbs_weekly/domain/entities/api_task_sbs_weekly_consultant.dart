// Project imports:
import 'package:terralinkapp/features/tasks/sbs/domain/entities/api_task_sbs_hours_type.dart';
import 'package:terralinkapp/features/tasks/sbs/domain/entities/app_task_sbs_result_type.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/entities/api_task_sbs_weekly_record.dart';

class ApiTaskSbsWeeklyConsultant {
  final int consultantId;
  final String name;
  final String totalHours;
  final double totalHoursDbl;
  final ApiTaskSbsHoursType hoursType;
  final List<ApiTaskSbsWeeklyRecord> records;
  final String? login;
  final AppTaskSbsResultType result;
  final String rejectReason;

  const ApiTaskSbsWeeklyConsultant({
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

  ApiTaskSbsWeeklyConsultant copyWith({
    int? consultantId,
    String? name,
    String? totalHours,
    double? totalHoursDbl,
    ApiTaskSbsHoursType? hoursType,
    List<ApiTaskSbsWeeklyRecord>? records,
    AppTaskSbsResultType? result,
    String? rejectReason,
    String? login,
  }) =>
      ApiTaskSbsWeeklyConsultant(
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
