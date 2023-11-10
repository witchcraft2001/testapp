// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/domain/entities/api_task_eas/api_task_eas_action.dart';
import 'package:terralinkapp/domain/repositories/tasks_eas_repository.dart';

abstract class CompleteCachedTaskEasUseCase {
  Future<void> run(String id, ApiTaskEasAction action, String? decision);
}

@LazySingleton(
  as: CompleteCachedTaskEasUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteCachedTaskEasUseCaseImpl extends CompleteCachedTaskEasUseCase {
  final TasksEasRepository _repository;

  CompleteCachedTaskEasUseCaseImpl(this._repository);

  @override
  Future<void> run(String id, ApiTaskEasAction action, String? decision) async {
    await _repository.completeTask(
      id: id,
      actionId: action.value.id,
      actionResult: action.value.result,
      comment: decision,
      method: action.method,
      url: action.url,
    );
  }
}
