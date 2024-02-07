// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/search_use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_cached_data_source.dart';
import 'package:terralinkapp/features/tasks/eas/data/mappers/task_eas/api_task_eas_dao_mapper.dart';
import 'package:terralinkapp/features/tasks/eas/domain/entities/api_task_eas.dart';

abstract class GetTasksEasUseCase
    implements AsyncParamfullUseCase<List<ApiTaskEas>, SearchUseCaseParams> {
  @override
  Future<List<ApiTaskEas>> call([SearchUseCaseParams params = const SearchUseCaseParams()]);
}

@LazySingleton(
  as: GetTasksEasUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetTasksEasUseCaseImpl extends GetTasksEasUseCase {
  final TasksEasCachedDataSource _tasksRepository;

  GetTasksEasUseCaseImpl(this._tasksRepository);

  @override
  Future<List<ApiTaskEas>> call([SearchUseCaseParams params = const SearchUseCaseParams()]) async {
    final result = await _tasksRepository.get(params.search);

    return result.map((e) => e.toDomain()).toList();
  }
}
