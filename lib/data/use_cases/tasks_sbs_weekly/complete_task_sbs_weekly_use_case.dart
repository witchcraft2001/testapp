// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/remote/tasks_sbs_remote_data_source.dart';
import 'package:terralinkapp/data/mappers/tasks_sbs_weekly/api_task_sbs_weekly_record_mapper.dart';
import 'package:terralinkapp/data/models/requests/api_task_sbs_result/api_task_sbs_record_result.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_weekly/api_task_sbs_weekly.dart';
import 'package:terralinkapp/domain/entities/app_task_sbs_result_type.dart';

abstract class CompleteTaskSbsWeeklyUseCase {
  Future<void> run(ApiTaskSbsWeekly task);
}

@LazySingleton(
  as: CompleteTaskSbsWeeklyUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteTaskSbsWeeklyUseCaseImpl extends CompleteTaskSbsWeeklyUseCase {
  final TasksSbsRemoteDataSource _repository;

  CompleteTaskSbsWeeklyUseCaseImpl(this._repository);

  @override
  Future<void> run(ApiTaskSbsWeekly task) async {
    final records = <ApiTaskSbsRecordResult>[];

    for (final consultant in task.consultants) {
      if (consultant.result != AppTaskSbsResultType.waiting) {
        for (final record in consultant.records) {
          if (record.result != AppTaskSbsResultType.waiting) {
            records.add(record.toRequest());
          }
        }
      }
    }

    await _repository.completeWeeklyRecords(records);
  }
}
