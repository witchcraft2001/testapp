// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/tasks/sbs/data/data_sources/tasks_sbs_cached_data_source.dart';

abstract class ClearCacheTasksSbsWeeklyUseCase implements ParamlessUseCase<void> {}

@LazySingleton(
  as: ClearCacheTasksSbsWeeklyUseCase,
  env: [Environment.dev, Environment.prod],
)
class ClearCacheTasksSbsWeeklyUseCaseImpl extends ClearCacheTasksSbsWeeklyUseCase {
  final TasksSbsCachedDataSource _tasksRepository;

  ClearCacheTasksSbsWeeklyUseCaseImpl(this._tasksRepository);

  @override
  void call([UseCaseParams params = const NoParams()]) {
    _tasksRepository.clearCacheWeekly();
  }
}
