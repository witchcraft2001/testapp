// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/remote/tasks_eas_remote_data_source.dart';
import 'package:terralinkapp/domain/models/app_task_eas/app_task_eas_action.dart';

abstract class CompleteTaskEASUseCase {
  Future<void> run(String id, AppTaskEASAction action, String? decision);
}

@LazySingleton(
  as: CompleteTaskEASUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteTaskEASUseCaseImpl extends CompleteTaskEASUseCase {
  final TasksEASRemoteDataSource _repository;

  CompleteTaskEASUseCaseImpl(this._repository);

  @override
  Future<void> run(String id, AppTaskEASAction action, String? decision) async {
    await _repository.setStatus(
      actionId: action.value.id,
      actionResult: action.value.result,
      method: action.method,
      url: action.url,
      comment: decision,
    );
  }
}
