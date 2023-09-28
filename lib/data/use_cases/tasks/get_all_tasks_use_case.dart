// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/cache/tasks_cached_data_source.dart';
import 'package:terralinkapp/data/mappers/task_mapper.dart';
import 'package:terralinkapp/domain/task.dart';

abstract class GetTasksUseCase {
  Future<List<Task>> run([String? search]);
}

@LazySingleton(as: GetTasksUseCase, env: [Environment.dev, Environment.prod])
class GetTasksUseCaseImpl extends GetTasksUseCase {
  final TasksCachedDataSource _tasksRepository;

  GetTasksUseCaseImpl(this._tasksRepository);

  @override
  Future<List<Task>> run([String? search]) async {
    final result = await _tasksRepository.getTasks(search);

    return result.map((e) => e.toDomain()).toList();
  }
}
