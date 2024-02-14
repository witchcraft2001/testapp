// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_cached_data_source.dart';

abstract class ClearCacheTasksEasUseCase implements ParamlessUseCase<void> {}

@LazySingleton(
  as: ClearCacheTasksEasUseCase,
  env: [Environment.dev, Environment.prod],
)
class ClearCacheTasksEasUseCaseImpl extends ClearCacheTasksEasUseCase {
  final TasksEasCachedDataSource _tasksRepository;

  ClearCacheTasksEasUseCaseImpl(this._tasksRepository);

  @override
  void call([UseCaseParams params = const NoParams()]) {
    _tasksRepository.clearCache();
  }
}
