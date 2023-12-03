// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/sbs/data/repositories/tasks_sbs_repository.dart';
import 'package:terralinkapp/features/tasks/sbs_late/domain/entities/api_task_sbs_late.dart';

abstract class CompleteCachedTasksSbsLateUseCase {
  Future<void> run(List<ApiTaskSbsLate> tasks);
}

@LazySingleton(
  as: CompleteCachedTasksSbsLateUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteCachedTaskSbsLateUseCaseImpl extends CompleteCachedTasksSbsLateUseCase {
  final TasksSbsRepository _repository;

  CompleteCachedTaskSbsLateUseCaseImpl(this._repository);

  @override
  Future<void> run(List<ApiTaskSbsLate> tasks) async {
    await _repository.completeLateRecords(tasks);
  }
}
