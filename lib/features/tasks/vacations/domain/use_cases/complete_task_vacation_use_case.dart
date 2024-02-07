// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/tasks/common/data/entities/api_task_eas_or_vacation_record_result.dart';
import 'package:terralinkapp/features/tasks/vacations/data/data_sources/tasks_vacation_remote_data_source.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/use_cases/params/action_task_vacation_use_case_params.dart';

abstract class CompleteTaskVacationUseCase
    implements AsyncParamfullUseCase<void, ActionTaskVacationUseCaseParams> {}

@LazySingleton(
  as: CompleteTaskVacationUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteTaskVacationUseCaseImpl extends CompleteTaskVacationUseCase {
  final TasksVacationRemoteDataSource _repository;

  CompleteTaskVacationUseCaseImpl(this._repository);

  @override
  Future<void> call(ActionTaskVacationUseCaseParams params) async {
    final record = ApiTaskEasOrVacationRecordResult(
      id: params.action.value.id,
      result: params.action.value.result,
      comment: params.comment,
    );

    await _repository.completeTask(record);
  }
}
