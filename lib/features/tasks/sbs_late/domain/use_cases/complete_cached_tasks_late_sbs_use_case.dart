// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/tasks/sbs/data/repositories/tasks_sbs_repository.dart';
import 'package:terralinkapp/features/tasks/sbs_late/domain/use_cases/params/tasks_sbs_use_case_params.dart';

abstract class CompleteCachedTasksSbsLateUseCase
    implements AsyncParamfullUseCase<void, TasksSbsUseCaseParams> {}

@LazySingleton(
  as: CompleteCachedTasksSbsLateUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteCachedTaskSbsLateUseCaseImpl extends CompleteCachedTasksSbsLateUseCase {
  final TasksSbsRepository _repository;

  CompleteCachedTaskSbsLateUseCaseImpl(this._repository);

  @override
  Future<void> call(TasksSbsUseCaseParams params) async {
    await _repository.completeLateRecords(params.tasks);
  }
}
