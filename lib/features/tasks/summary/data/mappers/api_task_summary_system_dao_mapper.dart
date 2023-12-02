// Project imports:
import 'package:terralinkapp/features/tasks/summary/data/dao/api_task_summary_system_dao.dart';
import 'package:terralinkapp/features/tasks/summary/domain/entities/api_tasks_summary_system.dart';

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
