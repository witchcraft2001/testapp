// Project imports:
import 'package:terralinkapp/features/tasks/sbs/data/entities/api_task_sbs_record_result.dart';
import 'package:terralinkapp/features/tasks/sbs/data/mappers/app_task_sbs_result_type_mapper.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/data/dao/api_task_sbs_weekly_record/api_task_sbs_weekly_record_dao.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/entities/api_task_sbs_weekly_record.dart';

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
