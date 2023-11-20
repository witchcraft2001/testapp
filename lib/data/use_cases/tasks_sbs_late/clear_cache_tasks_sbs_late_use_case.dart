// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/cache/tasks_sbs_cached_data_source.dart';

abstract class ClearCacheTasksSbsLateUseCase {
  void run();
}

@LazySingleton(
  as: ClearCacheTasksSbsLateUseCase,
  env: [Environment.dev, Environment.prod],
)
class ClearCacheTasksSbsLateUseCaseImpl extends ClearCacheTasksSbsLateUseCase {
  final TasksSbsCachedDataSource _tasksRepository;

  ClearCacheTasksSbsLateUseCaseImpl(this._tasksRepository);

  @override
  void run() {
    _tasksRepository.clearCacheLate();
  }
}
