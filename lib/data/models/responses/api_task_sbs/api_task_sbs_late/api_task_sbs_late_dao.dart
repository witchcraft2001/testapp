// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_hours_type/api_task_sbs_hours_type_dao.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_late_user/api_task_sbs_late_user_dao.dart';

class ApiTaskSbsLateDao {
  final int recordId;
  final int projectId;
  final ApiTaskSbsLateUserDao consultant;
  final DateTime reportDate;
  final String? customer;
  final String? project;
  final String? details;
  final ApiTaskSbsLateUserDao am;
  final ApiTaskSbsLateUserDao pm;
  final String? hours;
  final ApiTaskSbsHoursTypeDao? hoursType;
  final bool? pmAnswer;
  final bool? amAnswer;
  final bool? fmAnswer;
  final bool? ovtAnswer;

  const ApiTaskSbsLateDao({
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
  });

  ApiTaskSbsLateDao.fromJson(Map<String, dynamic> json)
      : recordId = json['id'],
        projectId = json['projectID'],
        consultant = ApiTaskSbsLateUserDao.fromJson(json['consultant']),
        reportDate = DateTime.parse(json['reportDate']),
        customer = json['customer'],
        project = json['project'],
        details = json['details'],
        am = ApiTaskSbsLateUserDao.fromJson(json['am']),
        pm = ApiTaskSbsLateUserDao.fromJson(json['pm']),
        hours = json['hours'],
        hoursType =
            json['billable'] != null ? ApiTaskSbsHoursTypeDao.fromJson(json['billable']) : null,
        pmAnswer = json['pmAnswer'],
        amAnswer = json['amAnswer'],
        fmAnswer = json['fmAnswer'],
        ovtAnswer = json['ovtAnswer'];
}
