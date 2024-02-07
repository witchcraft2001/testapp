// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/tasks/sbs/data/repositories/tasks_sbs_repository.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/use_cases/params/task_sbs_weekly_use_case_params.dart';

abstract class CompleteCachedTaskSbsWeeklyUseCase
    implements AsyncParamfullUseCase<void, TaskSbsWeeklyUseCaseParams> {}

@LazySingleton(
  as: CompleteCachedTaskSbsWeeklyUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteCachedTaskSbsWeeklyUseCaseImpl extends CompleteCachedTaskSbsWeeklyUseCase {
  final TasksSbsRepository _repository;

  CompleteCachedTaskSbsWeeklyUseCaseImpl(this._repository);

  @override
  Future<void> call(TaskSbsWeeklyUseCaseParams params) async {
    await _repository.completeWeeklyRecords(params.task);
  }
}
