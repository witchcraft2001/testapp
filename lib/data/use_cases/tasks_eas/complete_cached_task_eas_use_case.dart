// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/domain/models/app_task_eas/app_task_eas_action.dart';
import 'package:terralinkapp/domain/repositories/tasks_eas_repository.dart';

abstract class CompleteCachedTaskEASUseCase {
  Future<void> run(String id, AppTaskEASAction action, String? decision);
}

@LazySingleton(
  as: CompleteCachedTaskEASUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteCachedTaskEASUseCaseImpl extends CompleteCachedTaskEASUseCase {
  final TasksEASRepository _repository;

  CompleteCachedTaskEASUseCaseImpl(this._repository);

  @override
  Future<void> run(String id, AppTaskEASAction action, String? decision) async {
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
