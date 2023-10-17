// Project imports:
import 'package:terralinkapp/data/mappers/tasks_sbs/api_task_sbs_consultant_record_dao_mapper.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_dao.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs.dart';

extension ApiTaskSBSDaoMapper on ApiTaskSBSDao {
  AppTaskSBS toDomain() => AppTaskSBS(
        projectSbsId,
        projectName,
        company,
        pmName,
        amName,
        consultantsWithRecords.map((e) => e.toDomain()).toList(),
      );
}
