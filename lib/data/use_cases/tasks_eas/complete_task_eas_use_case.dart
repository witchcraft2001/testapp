// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/remote/tasks_eas_remote_data_source.dart';
import 'package:terralinkapp/domain/entities/api_task_eas/api_task_eas_action.dart';

abstract class CompleteTaskEasUseCase {
  Future<void> run(String id, ApiTaskEasAction action, String? decision);
}

@LazySingleton(
  as: CompleteTaskEasUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteTaskEasUseCaseImpl extends CompleteTaskEasUseCase {
  final TasksEasRemoteDataSource _repository;

  CompleteTaskEasUseCaseImpl(this._repository);

  @override
  Future<void> run(String id, ApiTaskEasAction action, String? decision) async {
    await _repository.completeTask(
      actionId: action.value.id,
      actionResult: action.value.result,
      method: action.method,
      url: action.url,
      comment: decision,
    );
  }
}
