// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/cache/tasks_sbs_cached_data_source.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_late/api_task_sbs_late_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_late/api_task_sbs_late.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_weekly/api_task_sbs_weekly.dart';
import 'package:terralinkapp/domain/entities/api_task_summary/api_tasks_summary_system.dart';
import 'package:terralinkapp/domain/repositories/tasks_sbs_repository.dart';

@LazySingleton(
  as: TasksSbsRepository,
  env: [Environment.dev, Environment.prod],
)
class TasksSbsCachedRepository implements TasksSbsRepository {
  final TasksSbsCachedDataSource _dataSource;

  TasksSbsCachedRepository({
    required TasksSbsCachedDataSource dataSource,
  }) : _dataSource = dataSource;

  @override
  Stream<Map<ApiTasksSummarySystem, int>> get stream => _dataSource.stream;

  @override
  Future<List<ApiTaskSbsWeekly>> getWeeklyRecords([String? search]) async {
    return await _dataSource.getWeeklyRecords(search);
  }

  @override
  Future<List<ApiTaskSbsLateDao>> getLateRecords([String? search]) async {
    return await _dataSource.getLateRecords(search);
  }

  @override
  Future<void> completeWeeklyRecords(ApiTaskSbsWeekly task) {
    return _dataSource.completeWeeklyTask(task);
  }

  @override
  Future<void> completeLateRecords(List<ApiTaskSbsLate> tasks) {
    return _dataSource.completeLateRecords(tasks);
  }

  @override
  Future<void> clearCacheWeeklyRecords() async {
    _dataSource.clearCacheWeekly();
  }

  @override
  Future<void> clearCacheLateRecords() async {
    _dataSource.clearCacheLate();
  }
}
