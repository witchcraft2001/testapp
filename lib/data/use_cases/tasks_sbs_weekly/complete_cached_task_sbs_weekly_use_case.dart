// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/domain/entities/api_task_sbs_weekly/api_task_sbs_weekly.dart';
import 'package:terralinkapp/domain/repositories/tasks_sbs_repository.dart';

abstract class CompleteCachedTaskSbsWeeklyUseCase {
  Future<void> run(ApiTaskSbsWeekly task);
}

@LazySingleton(
  as: CompleteCachedTaskSbsWeeklyUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteCachedTaskSbsWeeklyUseCaseImpl extends CompleteCachedTaskSbsWeeklyUseCase {
  final TasksSbsRepository _repository;

  CompleteCachedTaskSbsWeeklyUseCaseImpl(this._repository);

  @override
  Future<void> run(ApiTaskSbsWeekly task) async {
    await _repository.completeWeeklyRecords(task);
  }
}
