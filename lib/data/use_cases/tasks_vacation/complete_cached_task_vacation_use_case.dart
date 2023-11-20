// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/domain/repositories/tasks_vacation_repository.dart';

abstract class CompleteCachedTaskVacationUseCase {
  Future<void> run(String id);
}

@LazySingleton(
  as: CompleteCachedTaskVacationUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteCachedTaskVacationUseCaseImpl extends CompleteCachedTaskVacationUseCase {
  final TasksVacationRepository _repository;

  CompleteCachedTaskVacationUseCaseImpl(this._repository);

  @override
  Future<void> run(String id) async {
    await _repository.completeTask(id);
  }
}
