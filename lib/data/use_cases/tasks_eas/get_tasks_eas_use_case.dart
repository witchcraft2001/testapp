// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/cache/tasks_eas_cached_data_source.dart';
import 'package:terralinkapp/data/mappers/task_eas/task_mapper.dart';
import 'package:terralinkapp/domain/models/app_task_eas/app_task_eas.dart';

abstract class GetTasksEASUseCase {
  Future<List<AppTaskEAS>> run([String? search]);
}

@LazySingleton(
  as: GetTasksEASUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetTasksEASUseCaseImpl extends GetTasksEASUseCase {
  final TasksEASCachedDataSource _tasksRepository;

  GetTasksEASUseCaseImpl(this._tasksRepository);

  @override
  Future<List<AppTaskEAS>> run([String? search]) async {
    final result = await _tasksRepository.get(search);

    return result.map((e) => e.toDomain()).toList();
  }
}
