// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs.dart';
import 'package:terralinkapp/domain/repositories/tasks_sbs_repository.dart';

abstract class CompleteCachedTaskSBSUseCase {
  Future<void> run(AppTaskSBS task);
}

@LazySingleton(
  as: CompleteCachedTaskSBSUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteCachedTaskSBSUseCaseImpl extends CompleteCachedTaskSBSUseCase {
  final TasksSBSRepository _repository;

  CompleteCachedTaskSBSUseCaseImpl(this._repository);

  @override
  Future<void> run(AppTaskSBS task) async {
    await _repository.completeTask(task);
  }
}
