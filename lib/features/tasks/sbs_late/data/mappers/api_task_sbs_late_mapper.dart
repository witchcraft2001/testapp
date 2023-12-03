// Project imports:
import 'package:terralinkapp/features/tasks/sbs/data/entities/api_task_sbs_record_result.dart';
import 'package:terralinkapp/features/tasks/sbs/data/mappers/api_task_sbs_hours_type_mapper.dart';
import 'package:terralinkapp/features/tasks/sbs/data/mappers/app_task_sbs_result_type_mapper.dart';
import 'package:terralinkapp/features/tasks/sbs_late/data/dao/api_task_sbs_late_dao.dart';
import 'package:terralinkapp/features/tasks/sbs_late/data/mappers/api_task_sbs_late_user_mapper.dart';
import 'package:terralinkapp/features/tasks/sbs_late/domain/entities/api_task_sbs_late.dart';

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
        hoursType: hoursType?.toDao(),
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
