// Project imports:

// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_sbs_register_record/api_task_sbs_register_record_dao.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_register_record.dart';

extension ApiTaskSBSRegisterRecordDaoMapper on ApiTaskSBSRegisterRecordDao {
  AppTaskSBSRegisterRecord toDomain() => AppTaskSBSRegisterRecord(
        recordID: recordID,
        details: details,
        reportDate: reportDate,
        hours: hours,
        rejectReason: '',
        result: AppTaskSBSRecordResult.approved,
      );
}
