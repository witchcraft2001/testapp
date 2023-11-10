// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/cache/tasks_sbs_cached_data_source.dart';
import 'package:terralinkapp/data/mappers/tasks_sbs_late/api_task_sbs_late_dao_mapper.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_late/api_task_sbs_late.dart';

abstract class GetTasksSbsLateUseCase {
  Future<Map<int, List<ApiTaskSbsLate>>> run([String? search]);
}

@LazySingleton(
  as: GetTasksSbsLateUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetTasksSbsLateUseCaseImpl extends GetTasksSbsLateUseCase {
  final TasksSbsCachedDataSource _tasksRepository;

  GetTasksSbsLateUseCaseImpl(this._tasksRepository);

  @override
  Future<Map<int, List<ApiTaskSbsLate>>> run([String? search]) async {
    final tasks = await _tasksRepository.getLateRecords(search);

    Map<int, List<ApiTaskSbsLate>> tasksByProject = {};

    for (final task in tasks) {
      tasksByProject = {
        ...tasksByProject,
        task.projectId: [...?tasksByProject[task.projectId], task.toDomain()],
      };
    }

    return tasksByProject;
  }
}
