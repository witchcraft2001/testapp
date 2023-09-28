// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/cache/tasks_cached_data_source.dart';

abstract class ClearCacheTasksUseCase {
  void run();
}

@LazySingleton(as: ClearCacheTasksUseCase, env: [Environment.dev, Environment.prod])
class ClearCacheTasksUseCaseImpl extends ClearCacheTasksUseCase {
  final TasksCachedDataSource _tasksRepository;

  ClearCacheTasksUseCaseImpl(this._tasksRepository);

  @override
  void run() {
    _tasksRepository.clearCacheTasks();
  }
}
