// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/eas/data/repositories/tasks_eas_repository.dart';

abstract class CompleteCachedTaskEasUseCase {
  Future<void> run(String id);
}

@LazySingleton(
  as: CompleteCachedTaskEasUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteCachedTaskEasUseCaseImpl extends CompleteCachedTaskEasUseCase {
  final TasksEasRepository _repository;

  CompleteCachedTaskEasUseCaseImpl(this._repository);

  @override
  Future<void> run(String id) async {
    await _repository.completeTask(id);
  }
}
