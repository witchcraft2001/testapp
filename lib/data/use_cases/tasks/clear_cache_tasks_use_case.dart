// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/repositories/local/cached_tasks_repository.dart';

abstract class ClearCacheTasksUseCase {
  void run();
}

@LazySingleton(as: ClearCacheTasksUseCase, env: [Environment.dev, Environment.prod])
class ClearCacheTasksUseCaseImpl extends ClearCacheTasksUseCase {
  final CachedTasksRepository _tasksRepository;

  ClearCacheTasksUseCaseImpl(this._tasksRepository);

  @override
  void run() {
    _tasksRepository.clearCacheTasks();
  }
}
