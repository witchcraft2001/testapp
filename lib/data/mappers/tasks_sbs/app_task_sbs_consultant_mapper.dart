// Project imports:
import 'package:terralinkapp/data/mappers/tasks_sbs/app_task_sbs_record_mapper.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs_consultant/api_task_sbs_consultant_dao.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_consultant.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_record.dart';

extension AppTaskSBSConsultantMapper on AppTaskSBSConsultant {
  ApiTaskSBSConsultantDao toDao() => ApiTaskSBSConsultantDao(
        consultantSbsId: consultantId,
        hoursType: hoursType,
        name: name,
        registerRecords: records.map((e) => e.toDao()).toList(),
        totalHours: totalHours,
        totalHoursDbl: totalHoursDbl,
        login: login,
      );
}

extension AppTaskSBSResultTypeMapper on AppTaskSBSResultType {
  bool? toDao() {
    return switch (this) {
      AppTaskSBSResultType.approved => true,
      AppTaskSBSResultType.rejected => false,
      AppTaskSBSResultType.waiting => null,
      AppTaskSBSResultType.none => null,
    };
  }
}
