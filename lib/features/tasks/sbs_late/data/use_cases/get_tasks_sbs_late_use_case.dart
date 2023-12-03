// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/sbs/data/data_sources/tasks_sbs_cached_data_source.dart';
import 'package:terralinkapp/features/tasks/sbs_late/data/mappers/api_task_sbs_late_dao_mapper.dart';
import 'package:terralinkapp/features/tasks/sbs_late/domain/entities/api_task_sbs_late.dart';
import 'package:terralinkapp/features/tasks/sbs_late/domain/entities/app_project_sbs_late.dart';

abstract class GetTasksSbsLateUseCase {
  Future<List<AppProjectSbsLate>> run([String? search]);
}

@LazySingleton(
  as: GetTasksSbsLateUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetTasksSbsLateUseCaseImpl extends GetTasksSbsLateUseCase {
  final TasksSbsCachedDataSource _tasksRepository;

  GetTasksSbsLateUseCaseImpl(this._tasksRepository);

  @override
  Future<List<AppProjectSbsLate>> run([String? search]) async {
    final tasks = await _tasksRepository.getLateRecords(search);

    Map<int, List<ApiTaskSbsLate>> tasksByProject = {};

    for (final task in tasks) {
      tasksByProject = {
        ...tasksByProject,
        task.projectId: [...?tasksByProject[task.projectId], task.toDomain()],
      };
    }

    List<AppProjectSbsLate> list = [];

    if (tasksByProject.isNotEmpty) {
      for (final key in tasksByProject.keys) {
        list.add(AppProjectSbsLate(
          projectId: key,
          records: tasksByProject[key]!,
        ));
      }
    }

    return list;
  }
}
