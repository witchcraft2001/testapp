// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/sbs/data/data_sources/tasks_sbs_cached_data_source.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/entities/api_task_sbs_weekly.dart';

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
