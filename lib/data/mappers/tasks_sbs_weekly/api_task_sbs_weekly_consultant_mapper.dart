// Project imports:
import 'package:terralinkapp/data/mappers/tasks_sbs_common/api_task_sbs_hours_type_mapper.dart';
import 'package:terralinkapp/data/mappers/tasks_sbs_weekly/api_task_sbs_weekly_record_mapper.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_weekly_consultant/api_task_sbs_weekly_consultant_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_weekly/api_task_sbs_weekly_consultant.dart';

extension ApiTaskSbsWeeklyConsultantMapper on ApiTaskSbsWeeklyConsultant {
  ApiTaskSbsWeeklyConsultantDao toDao() => ApiTaskSbsWeeklyConsultantDao(
        consultantId: consultantId,
        hoursType: hoursType.toDao(),
        name: name,
        records: records.map((e) => e.toDao()).toList(),
        totalHours: totalHours,
        totalHoursDbl: totalHoursDbl,
        login: login,
      );
}
