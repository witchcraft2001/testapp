// Project imports:
import 'package:terralinkapp/data/mappers/tasks_sbs/api_task_sbs_record_dao_mapper.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs_consultant/api_task_sbs_consultant_dao.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_consultant.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_record.dart';

extension ApiTaskSBSConsultantDaoMapper on ApiTaskSBSConsultantDao {
  AppTaskSBSConsultant toDomain(int projectId) => AppTaskSBSConsultant(
        consultantId: consultantId,
        name: name,
        totalHours: totalHours,
        totalHoursDbl: totalHoursDbl,
        hoursType: hoursType,
        records: records.map((e) => e.toDomain(projectId, consultantId)).toList(),
        rejectReason: '',
        result: AppTaskSBSResultType.approved,
        login: login,
      );
}
