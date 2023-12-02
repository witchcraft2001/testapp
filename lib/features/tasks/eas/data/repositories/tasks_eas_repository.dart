// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_cached_data_source.dart';
import 'package:terralinkapp/features/tasks/eas/data/mappers/task_eas/api_task_eas_dao_mapper.dart';
import 'package:terralinkapp/features/tasks/eas/domain/entities/api_task_eas.dart';

abstract class TasksEasRepository {
  Stream<int> get stream;

  Future<List<ApiTaskEas>> getAll([String? search]);
  Future<void> completeTask(String id);
  Future<void> clearCache();
}

@LazySingleton(
  as: TasksEasRepository,
  env: [Environment.dev, Environment.prod],
)
class TasksEasRepositoryImpl implements TasksEasRepository {
  final TasksEasCachedDataSource _dataSource;

  TasksEasRepositoryImpl({
    required TasksEasCachedDataSource dataSource,
  }) : _dataSource = dataSource;

  @override
  Stream<int> get stream => _dataSource.stream;

  @override
  Future<List<ApiTaskEas>> getAll([String? search]) async {
    return (await _dataSource.get(search)).map((t) => t.toDomain()).toList();
  }

  @override
  Future<void> completeTask(String id) {
    return _dataSource.completeTask(id);
  }

  @override
  Future<void> clearCache() async {
    _dataSource.clearCache();
  }
}
