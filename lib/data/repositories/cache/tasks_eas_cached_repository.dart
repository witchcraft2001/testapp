// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/cache/tasks_eas_cached_data_source.dart';
import 'package:terralinkapp/data/mappers/task_eas/task_mapper.dart';
import 'package:terralinkapp/domain/models/app_task_eas/app_task_eas.dart';
import 'package:terralinkapp/domain/repositories/tasks_eas_repository.dart';

@LazySingleton(
  as: TasksEASRepository,
  env: [Environment.dev, Environment.prod],
)
class TasksEASCachedRepository implements TasksEASRepository {
  final TasksEASCachedDataSource _dataSource;

  TasksEASCachedRepository({
    required TasksEASCachedDataSource dataSource,
  }) : _dataSource = dataSource;

  @override
  Future<List<AppTaskEAS>> getAll([String? search]) async {
    return (await _dataSource.get(search)).map((t) => t.toDomain()).toList();
  }

  @override
  Future<void> completeTask({
    required String id,
    required int actionId,
    required String actionResult,
    required String? comment,
    required String method,
    required String url,
  }) {
    return _dataSource.completeTask(
      id: id,
      actionId: actionId,
      actionResult: actionResult,
      comment: comment,
      method: method,
      url: url,
    );
  }

  @override
  Future<void> clearCache() async {
    _dataSource.clearCache();
  }
}
