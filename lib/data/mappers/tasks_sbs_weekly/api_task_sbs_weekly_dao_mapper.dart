// Project imports:
import 'package:terralinkapp/data/mappers/tasks_sbs_weekly/api_task_sbs_weekly_consultant_dao_mapper.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_weekly/api_task_sbs_weekly_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_weekly/api_task_sbs_weekly.dart';

extension ApiTaskSbsWeeklyDaoMapper on ApiTaskSbsWeeklyDao {
  ApiTaskSbsWeekly toDomain({bool isDelegated = false}) => ApiTaskSbsWeekly(
        projectId: projectId,
        projectName: projectName,
        company: company,
        pmName: pmName,
        amName: amName,
        consultants: consultants.map((e) => e.toDomain(projectId)).toList(),
        isDelegated: isDelegated,
      );
}
