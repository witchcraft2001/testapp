// Project imports:
import 'package:terralinkapp/data/mappers/tasks_sbs_common/api_task_sbs_hours_type_dao_mapper.dart';
import 'package:terralinkapp/data/mappers/tasks_sbs_late/api_task_sbs_late_user_dao_mapper.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_late/api_task_sbs_late_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_late/api_task_sbs_late.dart';
import 'package:terralinkapp/domain/entities/app_task_sbs_result_type.dart';

extension ApiTaskSbsLateDaoMapper on ApiTaskSbsLateDao {
  ApiTaskSbsLate toDomain() => ApiTaskSbsLate(
        recordId: recordId,
        projectId: projectId,
        consultant: consultant.toDomain(),
        reportDate: reportDate,
        customer: customer,
        project: project,
        details: details,
        am: am.toDomain(),
        pm: pm.toDomain(),
        hours: hours,
        hoursType: hoursType.toDomain(),
        pmAnswer: pmAnswer,
        amAnswer: amAnswer,
        fmAnswer: fmAnswer,
        ovtAnswer: ovtAnswer,
        result: AppTaskSbsResultType.approved,
      );
}
