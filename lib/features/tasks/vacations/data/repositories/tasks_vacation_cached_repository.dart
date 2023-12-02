// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/vacations/data/data_sources/tasks_vacation_cached_data_source.dart';
import 'package:terralinkapp/features/tasks/vacations/data/mappers/api_task_vacation_dao_mapper.dart';
import 'package:terralinkapp/features/tasks/vacations/data/repositories/tasks_vacation_repository.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/entities/api_task_vacation.dart';

@LazySingleton(
  as: TasksVacationRepository,
  env: [Environment.dev, Environment.prod],
)
class TasksVacationRepositoryImpl implements TasksVacationRepository {
  final TasksVacationCachedDataSource _dataSource;

  TasksVacationRepositoryImpl({
    required TasksVacationCachedDataSource dataSource,
  }) : _dataSource = dataSource;

  @override
  Stream<int> get stream => _dataSource.stream;

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
