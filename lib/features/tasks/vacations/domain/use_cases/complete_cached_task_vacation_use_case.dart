// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/string_id_use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/tasks/vacations/data/repositories/tasks_vacation_repository.dart';

abstract class CompleteCachedTaskVacationUseCase
    implements AsyncParamfullUseCase<void, StringIdUseCaseParams> {}

@LazySingleton(
  as: CompleteCachedTaskVacationUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteCachedTaskVacationUseCaseImpl extends CompleteCachedTaskVacationUseCase {
  final TasksVacationRepository _repository;

  CompleteCachedTaskVacationUseCaseImpl(this._repository);

  @override
  Future<void> call(StringIdUseCaseParams params) async {
    await _repository.completeTask(params.id);
  }
}
