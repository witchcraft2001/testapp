// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/domain/repositories/tasks_repository.dart';
import 'package:terralinkapp/domain/task_action.dart';

abstract class SetCachedTaskStatusUseCase {
  Future<void> run(String id, TaskAction action, String? decision);
}

@LazySingleton(as: SetCachedTaskStatusUseCase, env: [Environment.dev, Environment.prod])
class SetCachedTaskStatusUseCaseImpl extends SetCachedTaskStatusUseCase {
  final TasksRepository _repository;

  SetCachedTaskStatusUseCaseImpl(this._repository);

  @override
  Future<void> run(String id, TaskAction action, String? decision) async {
    await _repository.setStatus(
      id: id,
      actionId: action.value.id,
      actionResult: action.value.result,
      comment: decision,
      method: action.method,
      url: action.url,
    );
  }
}
