// Project imports:
import 'package:terralinkapp/core/services/app_parsing_tags_service.dart';
import 'package:terralinkapp/features/tasks/sbs/domain/entities/api_task_sbs_hours_type.dart';
import 'package:terralinkapp/features/tasks/sbs/domain/entities/app_task_sbs_result_type.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/data/dao/api_task_sbs_weekly_record/api_task_sbs_weekly_record_dao.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/entities/api_task_sbs_weekly_record.dart';
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
