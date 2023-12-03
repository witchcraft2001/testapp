// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/sbs/data/repositories/tasks_sbs_repository.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/entities/api_task_sbs_weekly.dart';

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
