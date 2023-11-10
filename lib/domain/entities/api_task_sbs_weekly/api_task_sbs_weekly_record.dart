// Project imports:
import 'package:terralinkapp/domain/entities/api_task_sbs/api_task_sbs_hours_type.dart';
import 'package:terralinkapp/domain/entities/app_task_sbs_result_type.dart';

class ApiTaskSbsWeeklyRecord {
  final int projectId;
  final int consultantId;
  final int recordId;
  final String details;
  final DateTime reportDate;
  final String hours;
  final ApiTaskSbsHoursType hoursType;
  final AppTaskSbsResultType result;
  final String rejectReason;

  const ApiTaskSbsWeeklyRecord({
    required this.projectId,
    required this.consultantId,
    required this.recordId,
    required this.details,
    required this.reportDate,
    required this.hours,
    required this.hoursType,
    required this.result,
    required this.rejectReason,
  });

  ApiTaskSbsWeeklyRecord copyWith({
    int? projectId,
    int? consultantId,
    int? recordId,
    String? details,
    DateTime? reportDate,
    String? hours,
    ApiTaskSbsHoursType? hoursType,
    AppTaskSbsResultType? result,
    String? rejectReason,
  }) =>
      ApiTaskSbsWeeklyRecord(
        projectId: projectId ?? this.projectId,
        consultantId: consultantId ?? this.consultantId,
        recordId: recordId ?? this.recordId,
        details: details ?? this.details,
        reportDate: reportDate ?? this.reportDate,
        hours: hours ?? this.hours,
        hoursType: hoursType ?? this.hoursType,
        result: result ?? this.result,
        rejectReason: rejectReason ?? this.rejectReason,
      );
}
