// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/sbs/data/data_sources/tasks_sbs_cached_data_source.dart';
import 'package:terralinkapp/features/tasks/sbs_late/data/dao/api_task_sbs_late_dao.dart';
import 'package:terralinkapp/features/tasks/sbs_late/domain/entities/api_task_sbs_late.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/entities/api_task_sbs_weekly.dart';
import 'package:terralinkapp/features/tasks/summary/domain/entities/api_tasks_summary_system.dart';

abstract class TasksSbsRepository {
  Stream<Map<ApiTasksSummarySystem, int>> get stream;

  Future<List<ApiTaskSbsWeekly>> getWeeklyRecords([String? search]);
  Future<List<ApiTaskSbsLateDao>> getLateRecords([String? search]);

  Future<void> completeWeeklyRecords(ApiTaskSbsWeekly task);
  Future<void> completeLateRecords(List<ApiTaskSbsLate> tasks);

  Future<void> clearCacheWeeklyRecords();
  Future<void> clearCacheLateRecords();
}

@LazySingleton(
  as: TasksSbsRepository,
  env: [Environment.dev, Environment.prod],
)
class TasksSbsRepositoryImpl implements TasksSbsRepository {
  final TasksSbsCachedDataSource _dataSource;

  TasksSbsRepositoryImpl({
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
