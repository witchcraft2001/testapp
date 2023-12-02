// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_cached_data_source.dart';

abstract class ClearCacheTasksEasUseCase {
  void run();
}

@LazySingleton(
  as: ClearCacheTasksEasUseCase,
  env: [Environment.dev, Environment.prod],
)
class ClearCacheTasksEasUseCaseImpl extends ClearCacheTasksEasUseCase {
  final TasksEasCachedDataSource _tasksRepository;

  ClearCacheTasksEasUseCaseImpl(this._tasksRepository);

  @override
  void run() {
    _tasksRepository.clearCache();
  }
}
