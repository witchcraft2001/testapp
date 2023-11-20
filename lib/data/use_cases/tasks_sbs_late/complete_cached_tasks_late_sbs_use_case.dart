// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/domain/entities/api_task_sbs_late/api_task_sbs_late.dart';
import 'package:terralinkapp/domain/repositories/tasks_sbs_repository.dart';

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
