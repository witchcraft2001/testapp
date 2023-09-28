// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/remote/tasks_remote_data_source.dart';
import 'package:terralinkapp/domain/task_action.dart';

abstract class SetTaskStatusUseCase {
  Future<void> run(String id, TaskAction action, String? decision);
}

@LazySingleton(as: SetTaskStatusUseCase, env: [Environment.dev, Environment.prod])
class SetTaskStatusUseCaseImpl extends SetTaskStatusUseCase {
  final TasksRemoteDataSource _repository;

  SetTaskStatusUseCaseImpl(this._repository);

  @override
  Future<void> run(String id, TaskAction action, String? decision) async {
    await _repository.setStatus(
      actionId: action.value.id,
      actionResult: action.value.result,
      method: action.method,
      url: action.url,
      comment: decision,
    );
  }
}
