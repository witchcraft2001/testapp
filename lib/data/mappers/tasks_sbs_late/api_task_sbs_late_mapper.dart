// Project imports:
import 'package:terralinkapp/data/mappers/tasks_sbs_common/api_task_sbs_hours_type_mapper.dart';
import 'package:terralinkapp/data/mappers/tasks_sbs_common/app_task_sbs_result_type_mapper.dart';
import 'package:terralinkapp/data/mappers/tasks_sbs_late/api_task_sbs_late_user_mapper.dart';
import 'package:terralinkapp/data/models/requests/api_task_sbs_result/api_task_sbs_record_result.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_late/api_task_sbs_late_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_late/api_task_sbs_late.dart';

extension ApiTaskSbsLateMapper on ApiTaskSbsLate {
  ApiTaskSbsLateDao toDao() => ApiTaskSbsLateDao(
        recordId: recordId,
        projectId: projectId,
        consultant: consultant.toDao(),
        reportDate: reportDate,
        customer: customer,
        project: project,
        details: details,
        am: am.toDao(),
        pm: pm.toDao(),
        hours: hours,
        hoursType: hoursType.toDao(),
        pmAnswer: pmAnswer,
        amAnswer: amAnswer,
        fmAnswer: fmAnswer,
        ovtAnswer: ovtAnswer,
      );

  ApiTaskSbsRecordResult toRequest() => ApiTaskSbsRecordResult(
        id: recordId,
        result: result.toRequest(),
      );
}
