// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/common/data/entities/api_task_eas_or_vacation_record_result.dart';
import 'package:terralinkapp/features/tasks/vacations/data/data_sources/tasks_vacation_remote_data_source.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/entities/api_task_vacation_action.dart';

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
