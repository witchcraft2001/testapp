// Project imports:
import 'package:terralinkapp/data/mappers/tasks_sbs_common/app_task_sbs_result_type_mapper.dart';
import 'package:terralinkapp/data/models/requests/api_task_sbs_result/api_task_sbs_record_result.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_weekly_record/api_task_sbs_weekly_record_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_weekly/api_task_sbs_weekly_record.dart';

extension AppTaskSbsWeeklyRecordMapper on ApiTaskSbsWeeklyRecord {
  ApiTaskSbsWeeklyRecordDao toDao() => ApiTaskSbsWeeklyRecordDao(
        recordId: recordId,
        details: details,
        hours: hours,
        reportDate: reportDate,
      );

  ApiTaskSbsRecordResult toRequest() => ApiTaskSbsRecordResult(
        id: recordId,
        rejectReason: rejectReason,
        result: result.toRequest(),
      );
}
