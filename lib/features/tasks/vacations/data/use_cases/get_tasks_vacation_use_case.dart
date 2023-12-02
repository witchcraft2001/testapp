// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/vacations/data/data_sources/tasks_vacation_cached_data_source.dart';
import 'package:terralinkapp/features/tasks/vacations/data/mappers/api_task_vacation_dao_mapper.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/entities/api_task_vacation.dart';

abstract class GetTasksVacationUseCase {
  Future<List<ApiTaskVacation>> run([String? search]);
}

@LazySingleton(
  as: GetTasksVacationUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetTasksVacationUseCaseImpl extends GetTasksVacationUseCase {
  final TasksVacationCachedDataSource _tasksRepository;

  GetTasksVacationUseCaseImpl(this._tasksRepository);

  @override
  Future<List<ApiTaskVacation>> run([String? search]) async {
    final result = await _tasksRepository.get(search);

    return result.map((e) => e.toDomain()).toList();
  }
}
