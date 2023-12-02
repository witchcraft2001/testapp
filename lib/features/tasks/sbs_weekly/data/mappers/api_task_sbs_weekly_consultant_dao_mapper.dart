// Project imports:
import 'package:terralinkapp/features/tasks/sbs/data/mappers/api_task_sbs_hours_type_dao_mapper.dart';
import 'package:terralinkapp/features/tasks/sbs/domain/entities/app_task_sbs_result_type.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/data/dao/api_task_sbs_weekly_consultant/api_task_sbs_weekly_consultant_dao.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/data/mappers/api_task_sbs_weekly_record_dao_mapper.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/entities/api_task_sbs_weekly_consultant.dart';

extension ApiTaskSbsWeeklyConsultantDaoMapper on ApiTaskSbsWeeklyConsultantDao {
  ApiTaskSbsWeeklyConsultant toDomain(int projectId) {
    final domainHoursType = hoursType.toDomain();

    return ApiTaskSbsWeeklyConsultant(
      consultantId: consultantId,
      name: name,
      totalHours: totalHours,
      totalHoursDbl: totalHoursDbl,
      hoursType: domainHoursType,
      records: records.map((e) => e.toDomain(projectId, consultantId, domainHoursType)).toList(),
      rejectReason: '',
      result: AppTaskSbsResultType.approved,
      login: login,
    );
  }
}
