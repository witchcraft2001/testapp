// Project imports:
import 'package:terralinkapp/data/mappers/tasks_sbs/api_task_sbs_register_record_dao_mapper.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs_consultant_record/api_task_sbs_consultant_record_dao.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_consultant_record.dart';

extension ApiTaskSBSConsultantRecordDaoMapper on ApiTaskSBSConsultantRecordDao {
  AppTaskSBSConsultantRecord toDomain(int projectId) => AppTaskSBSConsultantRecord(
        consultantSbsId: consultantSbsId,
        name: name,
        totalHours: totalHours,
        totalHoursDbl: totalHoursDbl,
        hoursType: hoursType,
        registerRecords: registerRecords
            .map((e) => e.toDomain(
                  projectId,
                  consultantSbsId,
                ))
            .toList(),
        login: login,
      );
}
