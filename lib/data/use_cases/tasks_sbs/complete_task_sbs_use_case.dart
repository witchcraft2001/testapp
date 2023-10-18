// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/remote/tasks_sbs_remote_data_source.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs.dart';

abstract class CompleteTaskSBSUseCase {
  Future<void> run(AppTaskSBS task);
}

@LazySingleton(
  as: CompleteTaskSBSUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteTaskSBSUseCaseImpl extends CompleteTaskSBSUseCase {
  final TasksSBSRemoteDataSource _repository;

  CompleteTaskSBSUseCaseImpl(this._repository);

  @override
  Future<void> run(AppTaskSBS task) async {
    // ToDo 57 подумать как и что передевать на сервер, переводить records в формат для сервера

    await _repository.completeTask([]);
  }
}
