// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/repositories/local/cached_tasks_repository.dart';
import 'package:terralinkapp/domain/task_action.dart';

abstract class SetCachedTaskStatusUseCase {
  Future run(String id, TaskAction action, String? decision);
}

@LazySingleton(as: SetCachedTaskStatusUseCase, env: [Environment.dev, Environment.prod])
class SetCachedTaskStatusUseCaseImpl extends SetCachedTaskStatusUseCase {
  final CachedTasksRepository _repository;

  SetCachedTaskStatusUseCaseImpl(this._repository);

  @override
  Future run(String id, TaskAction action, String? decision) async {
    await _repository.setStatus(
      id,
      action.value.id,
      action.value.result,
      decision,
      action.method,
      action.url,
    );
  }
}
