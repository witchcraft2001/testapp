// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_sbs_register_record/api_task_sbs_register_record_dao.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_record.dart';

extension ApiTaskSBSRegisterRecordDaoMapper on ApiTaskSBSRegisterRecordDao {
  AppTaskSBSRecord toDomain(
    int projectId,
    int consultantId,
  ) =>
      AppTaskSBSRecord(
        projectId: projectId,
        consultantId: consultantId,
        recordId: recordID,
        details: details,
        reportDate: reportDate,
        hours: hours,
        rejectReason: '',
        result: AppTaskSBSRegisterRecordResultType.approved, // ToDo 57 вернуть на approved
      );
}
