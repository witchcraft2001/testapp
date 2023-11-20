// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_summary/api_task_summary_system_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_summary/api_tasks_summary_system.dart';

extension ApiTasksSummarySystemDaoMapper on ApiTasksSummarySystemDao {
  ApiTasksSummarySystem toDomain() {
    return switch (this) {
      ApiTasksSummarySystemDao.absence => ApiTasksSummarySystem.absence,
      ApiTasksSummarySystemDao.eas => ApiTasksSummarySystem.eas,
      ApiTasksSummarySystemDao.sbsLate => ApiTasksSummarySystem.sbsLate,
      ApiTasksSummarySystemDao.sbsWeekly => ApiTasksSummarySystem.sbsWeekly,
      ApiTasksSummarySystemDao.vacations => ApiTasksSummarySystem.vacations,
    };
  }
}
