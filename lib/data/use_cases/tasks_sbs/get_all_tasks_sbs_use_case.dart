// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/remote/tasks_sbs_remote_data_source.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_dao.dart';

abstract class GetTasksSBSUseCase {
  Future<List<ApiTaskSBSDao>> run([String? search]);
}

@LazySingleton(
  as: GetTasksSBSUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetTasksSBSUseCaseImpl extends GetTasksSBSUseCase {
  final TasksSBSRemoteDataSource _tasksRepository; // ToDo 57

  GetTasksSBSUseCaseImpl(this._tasksRepository);

  @override
  Future<List<ApiTaskSBSDao>> run([String? search]) async {
    final result = await _tasksRepository.getAll();

    return result;
  }
}
