// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_cached_data_source.dart';
import 'package:terralinkapp/features/tasks/eas/data/mappers/task_eas/api_task_eas_dao_mapper.dart';
import 'package:terralinkapp/features/tasks/eas/domain/entities/api_task_eas.dart';

abstract class GetTasksEasUseCase {
  Future<List<ApiTaskEas>> run([String? search]);
}

@LazySingleton(
  as: GetTasksEasUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetTasksEasUseCaseImpl extends GetTasksEasUseCase {
  final TasksEasCachedDataSource _tasksRepository;

  GetTasksEasUseCaseImpl(this._tasksRepository);

  @override
  Future<List<ApiTaskEas>> run([String? search]) async {
    final result = await _tasksRepository.get(search);

    return result.map((e) => e.toDomain()).toList();
  }
}
