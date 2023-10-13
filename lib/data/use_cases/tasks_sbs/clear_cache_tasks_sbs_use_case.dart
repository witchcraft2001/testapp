// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/cache/tasks_sbs_cached_data_source.dart';

abstract class ClearCacheTasksSBSUseCase {
  void run();
}

@LazySingleton(
  as: ClearCacheTasksSBSUseCase,
  env: [Environment.dev, Environment.prod],
)
class ClearCacheTasksSBSUseCaseImpl extends ClearCacheTasksSBSUseCase {
  final TasksSBSCachedDataSource _tasksRepository;

  ClearCacheTasksSBSUseCaseImpl(this._tasksRepository);

  @override
  void run() {
    _tasksRepository.clearCache();
  }
}
