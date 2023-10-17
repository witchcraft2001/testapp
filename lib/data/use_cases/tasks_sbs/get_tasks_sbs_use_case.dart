// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/cache/tasks_sbs_cached_data_source.dart';
import 'package:terralinkapp/data/mappers/tasks_sbs/api_task_sbs_dao_mapper.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs.dart';

abstract class GetTasksSBSUseCase {
  Future<List<AppTaskSBS>> run([String? search]);
}

@LazySingleton(
  as: GetTasksSBSUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetTasksSBSUseCaseImpl extends GetTasksSBSUseCase {
  final TasksSBSCachedDataSource _tasksRepository;

  GetTasksSBSUseCaseImpl(this._tasksRepository);

  @override
  Future<List<AppTaskSBS>> run([String? search]) async {
    final result = await _tasksRepository.get(search);

    return result.map((e) => e.toDomain()).toList();
  }
}
