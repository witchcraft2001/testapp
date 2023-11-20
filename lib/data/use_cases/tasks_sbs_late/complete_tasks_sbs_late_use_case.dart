// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/remote/tasks_sbs_remote_data_source.dart';
import 'package:terralinkapp/data/mappers/tasks_sbs_late/api_task_sbs_late_mapper.dart';
import 'package:terralinkapp/data/models/requests/api_task_sbs_result/api_task_sbs_record_result.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_late/api_task_sbs_late.dart';
import 'package:terralinkapp/domain/entities/app_task_sbs_result_type.dart';

abstract class CompleteTasksSbsLateUseCase {
  Future<void> run(List<ApiTaskSbsLate> tasks);
}

@LazySingleton(
  as: CompleteTasksSbsLateUseCase,
  env: [Environment.dev, Environment.prod],
)
class CompleteTaskSbsLateUseCaseImpl extends CompleteTasksSbsLateUseCase {
  final TasksSbsRemoteDataSource _repository;

  CompleteTaskSbsLateUseCaseImpl(this._repository);

  @override
  Future<void> run(List<ApiTaskSbsLate> tasks) async {
    final records = <ApiTaskSbsRecordResult>[];

    for (final task in tasks) {
      if (task.result != AppTaskSbsResultType.waiting) {
        records.add(task.toRequest());
      }
    }

    await _repository.completeLateRecords(records);
  }
}
