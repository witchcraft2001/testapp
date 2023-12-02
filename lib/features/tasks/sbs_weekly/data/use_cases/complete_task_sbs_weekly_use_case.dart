// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/sbs/data/data_sources/tasks_sbs_remote_data_source.dart';
import 'package:terralinkapp/features/tasks/sbs/data/entities/api_task_sbs_record_result.dart';
import 'package:terralinkapp/features/tasks/sbs/domain/entities/app_task_sbs_result_type.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/data/mappers/api_task_sbs_weekly_record_mapper.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/entities/api_task_sbs_weekly.dart';

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
