// Project imports:
import 'package:terralinkapp/data/mappers/tasks_sbs_common/api_task_sbs_hours_type_dao_mapper.dart';
import 'package:terralinkapp/data/mappers/tasks_sbs_weekly/api_task_sbs_weekly_record_dao_mapper.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_weekly_consultant/api_task_sbs_weekly_consultant_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_weekly/api_task_sbs_weekly_consultant.dart';
import 'package:terralinkapp/domain/entities/app_task_sbs_result_type.dart';

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
