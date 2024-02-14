// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/search_use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/tasks/sbs/data/data_sources/tasks_sbs_cached_data_source.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/entities/api_task_sbs_weekly.dart';

abstract class GetTasksSbsWeeklyUseCase
    implements AsyncParamfullUseCase<List<ApiTaskSbsWeekly>, SearchUseCaseParams> {
  @override
  Future<List<ApiTaskSbsWeekly>> call([SearchUseCaseParams params = const SearchUseCaseParams()]);
}

@LazySingleton(
  as: GetTasksSbsWeeklyUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetTasksSbsWeeklyUseCaseImpl extends GetTasksSbsWeeklyUseCase {
  final TasksSbsCachedDataSource _tasksRepository;

  GetTasksSbsWeeklyUseCaseImpl(this._tasksRepository);

  @override
  Future<List<ApiTaskSbsWeekly>> call([
    SearchUseCaseParams params = const SearchUseCaseParams(),
  ]) async {
    final tasks = await _tasksRepository.getWeeklyRecords(params.search);

    return tasks;
  }
}
