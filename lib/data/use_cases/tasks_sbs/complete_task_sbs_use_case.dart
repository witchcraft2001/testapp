// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/remote/tasks_sbs_remote_data_source.dart';
import 'package:terralinkapp/data/models/requests/api_tasks_sbs_result/api_tasks_sbs_register_record_result.dart';

abstract class CompleteTaskSBSUseCase {
  Future<void> run(List<ApiTasksSBSRegisterRecordResult> records);
}

@LazySingleton(
  as: CompleteTaskSBSUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteTaskSBSUseCaseImpl extends CompleteTaskSBSUseCase {
  final TasksSBSRemoteDataSource _repository;

  CompleteTaskSBSUseCaseImpl(this._repository);

  @override
  Future<void> run(List<ApiTasksSBSRegisterRecordResult> records) async {
    await _repository.completeTask(records);
  }
}
