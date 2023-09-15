// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/repositories/tasks_repository.dart';
import 'package:terralinkapp/domain/task_action.dart';

abstract class SetTaskStatusUseCase {
  Future run(String id, TaskAction action, String? decision);
}

@LazySingleton(as: SetTaskStatusUseCase, env: [Environment.dev, Environment.prod])
class SetTaskStatusUseCaseImpl extends SetTaskStatusUseCase {
  final TasksRepository _repository;

  SetTaskStatusUseCaseImpl(this._repository);

  @override
  Future run(String id, TaskAction action, String? decision) async {
    await _repository.setStatus(
      action.value.id,
      action.value.result,
      decision,
      action.method,
      action.url,
    );
  }
}
