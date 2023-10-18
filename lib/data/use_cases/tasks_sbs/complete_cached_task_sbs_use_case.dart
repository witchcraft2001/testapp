// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/models/requests/api_tasks_sbs_result/api_tasks_sbs_result.dart';
import 'package:terralinkapp/domain/repositories/tasks_sbs_repository.dart';

abstract class CompleteCachedTaskSBSUseCase {
  Future<void> run(List<ApiTasksSBSResult> records);
}

@LazySingleton(
  as: CompleteCachedTaskSBSUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteCachedTaskSBSUseCaseImpl extends CompleteCachedTaskSBSUseCase {
  final TasksSBSRepository _repository;

  CompleteCachedTaskSBSUseCaseImpl(this._repository);

  @override
  Future<void> run(List<ApiTasksSBSResult> records) async {
    await _repository.completeTask(records);
  }
}
