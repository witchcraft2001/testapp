// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_sbs_record/api_task_sbs_record_dao.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_record.dart';

extension ApiTaskSBSRecordDaoMapper on ApiTaskSBSRecordDao {
  AppTaskSBSRecord toDomain(
    int projectId,
    int consultantId,
  ) =>
      AppTaskSBSRecord(
        projectId: projectId,
        consultantId: consultantId,
        recordId: recordId,
        details: details,
        reportDate: reportDate,
        hours: hours,
        rejectReason: '',
        result: AppTaskSBSResultType.approved,
      );
}
