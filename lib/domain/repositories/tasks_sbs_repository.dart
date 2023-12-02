// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_late/api_task_sbs_late_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_late/api_task_sbs_late.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_weekly/api_task_sbs_weekly.dart';
import 'package:terralinkapp/domain/entities/api_task_summary/api_tasks_summary_system.dart';

abstract class TasksSbsRepository {
  Stream<Map<ApiTasksSummarySystem, int>> get stream;

  Future<List<ApiTaskSbsWeekly>> getWeeklyRecords([String? search]);
  Future<List<ApiTaskSbsLateDao>> getLateRecords([String? search]);

  Future<void> completeWeeklyRecords(ApiTaskSbsWeekly task);
  Future<void> completeLateRecords(List<ApiTaskSbsLate> tasks);

  Future<void> clearCacheWeeklyRecords();
  Future<void> clearCacheLateRecords();
}
