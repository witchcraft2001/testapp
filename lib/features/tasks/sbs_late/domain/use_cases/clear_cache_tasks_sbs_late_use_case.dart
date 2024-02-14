// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/tasks/sbs/data/data_sources/tasks_sbs_cached_data_source.dart';

abstract class ClearCacheTasksSbsLateUseCase implements ParamlessUseCase<void> {}

@LazySingleton(
  as: ClearCacheTasksSbsLateUseCase,
  env: [Environment.dev, Environment.prod],
)
class ClearCacheTasksSbsLateUseCaseImpl extends ClearCacheTasksSbsLateUseCase {
  final TasksSbsCachedDataSource _tasksRepository;

  ClearCacheTasksSbsLateUseCaseImpl(this._tasksRepository);

  @override
  void call([UseCaseParams params = const NoParams()]) {
    _tasksRepository.clearCacheLate();
  }
}
