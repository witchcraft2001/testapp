// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/remote/tasks_eas_remote_data_source.dart';
import 'package:terralinkapp/data/models/requests/api_task_eas_or_vacation_record_result/api_task_eas_or_vacation_record_result.dart';
import 'package:terralinkapp/domain/entities/api_task_eas/api_task_eas_action.dart';

abstract class CompleteTaskEasUseCase {
  Future<void> run(ApiTaskEasAction action, String? comment);
}

@LazySingleton(
  as: CompleteTaskEasUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteTaskEasUseCaseImpl extends CompleteTaskEasUseCase {
  final TasksEasRemoteDataSource _repository;

  CompleteTaskEasUseCaseImpl(this._repository);

  @override
  Future<void> run(ApiTaskEasAction action, String? comment) async {
    final record = ApiTaskEasOrVacationRecordResult(
      id: action.value.id,
      result: action.value.result,
      comment: comment,
    );

    await _repository.completeTask(record);
  }
}
