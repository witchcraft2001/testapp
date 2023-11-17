// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/remote/tasks_vacation_remote_data_source.dart';
import 'package:terralinkapp/data/models/requests/api_task_eas_or_vacation_record_result/api_task_eas_or_vacation_record_result.dart';
import 'package:terralinkapp/domain/entities/api_task_vacation/api_task_vacation_action.dart';

abstract class CompleteTaskVacationUseCase {
  Future<void> run(ApiTaskVacationAction action, String? comment);
}

@LazySingleton(
  as: CompleteTaskVacationUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteTaskVacationUseCaseImpl extends CompleteTaskVacationUseCase {
  final TasksVacationRemoteDataSource _repository;

  CompleteTaskVacationUseCaseImpl(this._repository);

  @override
  Future<void> run(ApiTaskVacationAction action, String? comment) async {
    final record = ApiTaskEasOrVacationRecordResult(
      id: action.value.id,
      result: action.value.result,
      comment: comment,
    );

    await _repository.completeTask(record);
  }
}
