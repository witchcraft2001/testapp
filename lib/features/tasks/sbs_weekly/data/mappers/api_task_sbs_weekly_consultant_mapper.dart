// Project imports:
import 'package:terralinkapp/features/tasks/sbs/data/mappers/api_task_sbs_hours_type_mapper.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/data/dao/api_task_sbs_weekly_consultant/api_task_sbs_weekly_consultant_dao.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/data/mappers/api_task_sbs_weekly_record_mapper.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/entities/api_task_sbs_weekly_consultant.dart';

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
