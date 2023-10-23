// Project imports:
import 'package:terralinkapp/data/models/requests/api_task_sbs_result/api_task_sbs_record_result.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs_record/api_task_sbs_record_dao.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_record.dart';

extension AppTaskSBSRecordMapper on AppTaskSBSRecord {
  ApiTaskSBSRecordDao toDao() => ApiTaskSBSRecordDao(
        recordId: recordId,
        details: details,
        hours: hours,
        reportDate: reportDate,
      );

  ApiTaskSBSRecordResult toRequest() => ApiTaskSBSRecordResult(
        id: recordId,
        rejectReason: rejectReason,
        result: result.toRequest(),
      );
}

extension AppTaskSBSResultTypeMapper on AppTaskSBSResultType {
  bool? toRequest() {
    return switch (this) {
      AppTaskSBSResultType.approved => true,
      AppTaskSBSResultType.rejected => false,
      AppTaskSBSResultType.waiting => null,
      AppTaskSBSResultType.none => null,
    };
  }
}
