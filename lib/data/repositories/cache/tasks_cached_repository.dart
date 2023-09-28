// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/cache/tasks_cached_data_source.dart';
import 'package:terralinkapp/data/mappers/task_mapper.dart';
import 'package:terralinkapp/domain/repositories/tasks_repository.dart';
import 'package:terralinkapp/domain/task.dart';

@LazySingleton(as: TasksRepository, env: [Environment.dev, Environment.prod])
class TasksCachedRepository implements TasksRepository {
  final TasksCachedDataSource _dataSource;

  TasksCachedRepository({required TasksCachedDataSource dataSource})
      : _dataSource = dataSource;

  @override
  Future<void> clearTasksCache() async {
    _dataSource.clearCacheTasks();
  }

  @override
  Future<List<Task>> getAll([String? search]) async {
    return (await _dataSource.getTasks(search)).map((t) => t.toDomain()).toList();
  }

  @override
  Future<void> setStatus({
    required String id,
    required int actionId,
    required String actionResult,
    required String? comment,
    required String method,
    required String url,
  }) {
    return _dataSource.setStatus(
      id: id,
      actionId: actionId,
      actionResult: actionResult,
      comment: comment,
      method: method,
      url: url,
    );
  }
}
