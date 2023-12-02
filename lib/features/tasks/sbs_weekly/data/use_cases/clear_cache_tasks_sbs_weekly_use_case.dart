// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/sbs/data/data_sources/tasks_sbs_cached_data_source.dart';

abstract class ClearCacheTasksSbsWeeklyUseCase {
  void run();
}

@LazySingleton(
  as: ClearCacheTasksSbsWeeklyUseCase,
  env: [Environment.dev, Environment.prod],
)
class ClearCacheTasksSbsWeeklyUseCaseImpl extends ClearCacheTasksSbsWeeklyUseCase {
  final TasksSbsCachedDataSource _tasksRepository;

  ClearCacheTasksSbsWeeklyUseCaseImpl(this._tasksRepository);

  @override
  void run() {
    _tasksRepository.clearCacheWeekly();
  }
}
