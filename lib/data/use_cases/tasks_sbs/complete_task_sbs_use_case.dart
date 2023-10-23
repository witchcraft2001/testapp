// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/remote/tasks_sbs_remote_data_source.dart';
import 'package:terralinkapp/data/mappers/tasks_sbs/app_task_sbs_record_mapper.dart';
import 'package:terralinkapp/data/models/requests/api_task_sbs_result/api_task_sbs_record_result.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_record.dart';

abstract class CompleteTaskSBSUseCase {
  Future<void> run(AppTaskSBS task);
}

@LazySingleton(
  as: CompleteTaskSBSUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteTaskSBSUseCaseImpl extends CompleteTaskSBSUseCase {
  final TasksSBSRemoteDataSource _repository;

  CompleteTaskSBSUseCaseImpl(this._repository);

  @override
  Future<void> run(AppTaskSBS task) async {
    final records = <ApiTaskSBSRecordResult>[];

    for (final consultant in task.consultants) {
      if (consultant.result != AppTaskSBSResultType.waiting) {
        for (final record in consultant.records) {
          records.add(record.toRequest());
        }
      }
    }

    await _repository.completeTask(records);
  }
}
