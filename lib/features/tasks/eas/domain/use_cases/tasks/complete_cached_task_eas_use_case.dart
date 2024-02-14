// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/string_id_use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/tasks/eas/data/repositories/tasks_eas_repository.dart';

abstract class CompleteCachedTaskEasUseCase
    implements AsyncParamfullUseCase<void, StringIdUseCaseParams> {}

@LazySingleton(
  as: CompleteCachedTaskEasUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteCachedTaskEasUseCaseImpl extends CompleteCachedTaskEasUseCase {
  final TasksEasRepository _repository;

  CompleteCachedTaskEasUseCaseImpl(this._repository);

  @override
  Future<void> call(StringIdUseCaseParams params) async {
    await _repository.completeTask(params.id);
  }
}
