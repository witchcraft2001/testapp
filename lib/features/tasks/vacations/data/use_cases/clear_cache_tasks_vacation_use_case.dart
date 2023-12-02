// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/vacations/data/data_sources/tasks_vacation_cached_data_source.dart';

abstract class ClearCacheTasksVacationUseCase {
  void run();
}

@LazySingleton(
  as: ClearCacheTasksVacationUseCase,
  env: [Environment.dev, Environment.prod],
)
class ClearCacheTasksVacationUseCaseImpl extends ClearCacheTasksVacationUseCase {
  final TasksVacationCachedDataSource _tasksRepository;

  ClearCacheTasksVacationUseCaseImpl(this._tasksRepository);

  @override
  void run() {
    _tasksRepository.clearCache();
  }
}
