// Project imports:
import 'package:terralinkapp/core/services/app_parsing_tags_service.dart';
import 'package:terralinkapp/features/tasks/sbs/data/mappers/api_task_sbs_hours_type_dao_mapper.dart';
import 'package:terralinkapp/features/tasks/sbs/domain/entities/app_task_sbs_result_type.dart';
import 'package:terralinkapp/features/tasks/sbs_late/data/dao/api_task_sbs_late_dao.dart';
import 'package:terralinkapp/features/tasks/sbs_late/data/mappers/api_task_sbs_late_user_dao_mapper.dart';
import 'package:terralinkapp/features/tasks/sbs_late/domain/entities/api_task_sbs_late.dart';
import 'package:terralinkapp/injection.dart';

extension ApiTaskSbsLateDaoMapper on ApiTaskSbsLateDao {
  ApiTaskSbsLate toDomain() => ApiTaskSbsLate(
        recordId: recordId,
        projectId: projectId,
        consultant: consultant.toDomain(),
        reportDate: reportDate,
        customer: customer,
        project: project,
        details: getIt<AppParsingTagsService>().parseTasksSbs(details),
        am: am.toDomain(),
        pm: pm.toDomain(),
        hours: hours,
        hoursType: hoursType?.toDomain(),
        pmAnswer: pmAnswer,
        amAnswer: amAnswer,
        fmAnswer: fmAnswer,
        ovtAnswer: ovtAnswer,
        result: AppTaskSbsResultType.approved,
      );
}
