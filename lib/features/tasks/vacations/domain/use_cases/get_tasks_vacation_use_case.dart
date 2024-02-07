// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/search_use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/tasks/vacations/data/data_sources/tasks_vacation_cached_data_source.dart';
import 'package:terralinkapp/features/tasks/vacations/data/mappers/api_task_vacation_dao_mapper.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/entities/api_task_vacation.dart';

abstract class GetTasksVacationUseCase
    implements AsyncParamfullUseCase<List<ApiTaskVacation>, SearchUseCaseParams> {
  @override
  Future<List<ApiTaskVacation>> call([SearchUseCaseParams params = const SearchUseCaseParams()]);
}

@LazySingleton(
  as: GetTasksVacationUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetTasksVacationUseCaseImpl extends GetTasksVacationUseCase {
  final TasksVacationCachedDataSource _tasksRepository;

  GetTasksVacationUseCaseImpl(this._tasksRepository);

  @override
  Future<List<ApiTaskVacation>> call([
    SearchUseCaseParams params = const SearchUseCaseParams(),
  ]) async {
    final result = await _tasksRepository.get(params.search);

    return result.map((e) => e.toDomain()).toList();
  }
}
