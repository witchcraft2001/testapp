// Project imports:
import 'package:terralinkapp/domain/entities/api_task_sbs/api_task_sbs_hours_type.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_late/api_task_sbs_late_user.dart';
import 'package:terralinkapp/domain/entities/app_task_sbs_result_type.dart';

class ApiTaskSbsLate {
  final int recordId;
  final int projectId;
  final ApiTaskSbsLateUser consultant;
  final DateTime reportDate;
  final String? customer;
  final String? project;
  final String? details;
  final ApiTaskSbsLateUser am;
  final ApiTaskSbsLateUser pm;
  final String? hours;
  final ApiTaskSbsHoursType? hoursType;
  final bool? pmAnswer;
  final bool? amAnswer;
  final bool? fmAnswer;
  final bool? ovtAnswer;
  final AppTaskSbsResultType result;

  const ApiTaskSbsLate({
    required this.recordId,
    required this.projectId,
    required this.consultant,
    required this.reportDate,
    this.customer,
    this.project,
    this.details,
    required this.am,
    required this.pm,
    required this.hours,
    this.hoursType,
    this.pmAnswer,
    this.amAnswer,
    this.fmAnswer,
    this.ovtAnswer,
    required this.result,
  });

  ApiTaskSbsLate copyWith({
    int? recordId,
    int? projectId,
    ApiTaskSbsLateUser? consultant,
    DateTime? reportDate,
    String? customer,
    String? project,
    String? details,
    ApiTaskSbsLateUser? am,
    ApiTaskSbsLateUser? pm,
    String? hours,
    ApiTaskSbsHoursType? hoursType,
    bool? pmAnswer,
    bool? amAnswer,
    bool? fmAnswer,
    bool? ovtAnswer,
    AppTaskSbsResultType? result,
  }) =>
      ApiTaskSbsLate(
        recordId: recordId ?? this.recordId,
        projectId: projectId ?? this.projectId,
        consultant: consultant ?? this.consultant,
        reportDate: reportDate ?? this.reportDate,
        customer: customer ?? this.customer,
        project: project ?? this.project,
        details: details ?? this.details,
        am: am ?? this.am,
        pm: pm ?? this.pm,
        hours: hours ?? this.hours,
        hoursType: hoursType ?? this.hoursType,
        pmAnswer: pmAnswer ?? this.pmAnswer,
        amAnswer: amAnswer ?? this.amAnswer,
        fmAnswer: fmAnswer ?? this.fmAnswer,
        ovtAnswer: ovtAnswer ?? this.ovtAnswer,
        result: result ?? this.result,
      );
}
