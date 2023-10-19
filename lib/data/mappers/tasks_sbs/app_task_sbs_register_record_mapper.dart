// Project imports:
import 'package:terralinkapp/data/models/requests/api_tasks_sbs_result/api_tasks_sbs_register_record_result.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_record.dart';

extension AppTaskSBSRegisterRecordMapper on AppTaskSBSRecord {
  ApiTasksSBSRegisterRecordResult toDao() => ApiTasksSBSRegisterRecordResult(
        id: recordId,
        rejectReason: rejectReason,
        result: result.toDao(),
      );
}

extension AppTaskSBSRecordResultMapper on AppTaskSBSRegisterRecordResultType {
  bool? toDao() {
    return switch (this) {
      AppTaskSBSRegisterRecordResultType.approved => true,
      AppTaskSBSRegisterRecordResultType.rejected => false,
      AppTaskSBSRegisterRecordResultType.waiting => null,
    };
  }
}
