// Project imports:
import 'package:terralinkapp/features/tasks/sbs_weekly/data/dao/api_task_sbs_weekly/api_task_sbs_weekly_dao.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/data/mappers/api_task_sbs_weekly_consultant_dao_mapper.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/entities/api_task_sbs_weekly.dart';

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
