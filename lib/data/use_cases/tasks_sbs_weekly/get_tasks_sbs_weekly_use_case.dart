// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/cache/tasks_sbs_cached_data_source.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_weekly/api_task_sbs_weekly.dart';

abstract class GetTasksSbsWeeklyUseCase {
  Future<List<ApiTaskSbsWeekly>> run([String? search]);
}

@LazySingleton(
  as: GetTasksSbsWeeklyUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetTasksSbsWeeklyUseCaseImpl extends GetTasksSbsWeeklyUseCase {
  final TasksSbsCachedDataSource _tasksRepository;

  GetTasksSbsWeeklyUseCaseImpl(this._tasksRepository);

  @override
  Future<List<ApiTaskSbsWeekly>> run([String? search]) async {
    final tasks = await _tasksRepository.getWeeklyRecords(search);

    return tasks;
  }
}
