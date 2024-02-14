// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/tasks/common/data/entities/api_task_eas_or_vacation_record_result.dart';
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_remote_data_source.dart';
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/params/action_task_eas_use_case_params.dart';

abstract class CompleteTaskEasUseCase
    implements AsyncParamfullUseCase<void, ActionTaskEasUseCaseParams> {}

@LazySingleton(
  as: CompleteTaskEasUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteTaskEasUseCaseImpl extends CompleteTaskEasUseCase {
  final TasksEasRemoteDataSource _repository;

  CompleteTaskEasUseCaseImpl(this._repository);

  @override
  Future<void> call(ActionTaskEasUseCaseParams params) async {
    final record = ApiTaskEasOrVacationRecordResult(
      id: params.action.value.id,
      result: params.action.value.result,
      comment: params.comment,
    );

    await _repository.completeTask(record);
  }
}
