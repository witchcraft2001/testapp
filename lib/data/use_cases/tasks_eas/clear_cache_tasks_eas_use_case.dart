// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/cache/tasks_eas_cached_data_source.dart';

abstract class ClearCacheTasksEASUseCase {
  void run();
}

@LazySingleton(
  as: ClearCacheTasksEASUseCase,
  env: [Environment.dev, Environment.prod],
)
class ClearCacheTasksEASUseCaseImpl extends ClearCacheTasksEASUseCase {
  final TasksEASCachedDataSource _tasksRepository;

  ClearCacheTasksEASUseCaseImpl(this._tasksRepository);

  @override
  void run() {
    _tasksRepository.clearCache();
  }
}
