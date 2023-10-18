// Project imports:

// Project imports:
import 'package:terralinkapp/data/models/requests/api_tasks_sbs_result/api_tasks_sbs_result.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_register_record.dart';

extension AppTaskSBSRegisterRecordMapper on AppTaskSBSRegisterRecord {
  ApiTasksSBSResult toDao() => ApiTasksSBSResult(
        id: recordID,
        rejectReason: rejectReason,
        result: result.toDao(),
      );
}

extension AppTaskSBSRecordResultMapper on AppTaskSBSRecordResult {
  bool? toDao() {
    return switch (this) {
      AppTaskSBSRecordResult.approved => true,
      AppTaskSBSRecordResult.rejected => false,
      AppTaskSBSRecordResult.waiting => null,
    };
  }
}
