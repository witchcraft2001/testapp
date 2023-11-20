// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_weekly_record/api_task_sbs_weekly_record_dao.dart';
import 'package:terralinkapp/data/services/app_parsing_tags_service.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs/api_task_sbs_hours_type.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_weekly/api_task_sbs_weekly_record.dart';
import 'package:terralinkapp/domain/entities/app_task_sbs_result_type.dart';
import 'package:terralinkapp/injection.dart';

extension ApiTaskSbsWeeklyRecordDaoMapper on ApiTaskSbsWeeklyRecordDao {
  ApiTaskSbsWeeklyRecord toDomain(
    int projectId,
    int consultantId,
    ApiTaskSbsHoursType hoursType,
  ) =>
      ApiTaskSbsWeeklyRecord(
        projectId: projectId,
        consultantId: consultantId,
        recordId: recordId,
        details: getIt<AppParsingTagsService>().parseTasksSbs(details),
        reportDate: reportDate,
        hours: hours,
        hoursType: hoursType,
        rejectReason: '',
        result: AppTaskSbsResultType.approved,
      );
}
