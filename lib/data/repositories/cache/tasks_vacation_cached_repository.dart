// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/cache/tasks_vacation_cached_data_source.dart';
import 'package:terralinkapp/data/mappers/task_vacation/api_task_vacation_dao_mapper.dart';
import 'package:terralinkapp/domain/entities/api_task_vacation/api_task_vacation.dart';
import 'package:terralinkapp/domain/repositories/tasks_vacation_repository.dart';

@LazySingleton(
  as: TasksVacationRepository,
  env: [Environment.dev, Environment.prod],
)
class TasksVacationCachedRepository implements TasksVacationRepository {
  final TasksVacationCachedDataSource _dataSource;

  TasksVacationCachedRepository({
    required TasksVacationCachedDataSource dataSource,
  }) : _dataSource = dataSource;

  @override
  Stream<int> get stream => _dataSource.stream;

  @override
  set stream(Stream<int> stream) {
    stream = _dataSource.stream;
  }

  @override
  Future<List<ApiTaskVacation>> getAll([String? search]) async {
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
