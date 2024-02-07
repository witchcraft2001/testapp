// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/tasks/vacations/data/data_sources/tasks_vacation_cached_data_source.dart';

abstract class ClearCacheTasksVacationUseCase implements ParamlessUseCase<void> {}

@LazySingleton(
  as: ClearCacheTasksVacationUseCase,
  env: [Environment.dev, Environment.prod],
)
class ClearCacheTasksVacationUseCaseImpl extends ClearCacheTasksVacationUseCase {
  final TasksVacationCachedDataSource _tasksRepository;

  ClearCacheTasksVacationUseCaseImpl(this._tasksRepository);

  @override
  void call([UseCaseParams params = const NoParams()]) {
    _tasksRepository.clearCache();
  }
}
