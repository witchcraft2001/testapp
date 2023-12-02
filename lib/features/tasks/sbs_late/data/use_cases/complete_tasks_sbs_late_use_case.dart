// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/sbs/data/data_sources/tasks_sbs_remote_data_source.dart';
import 'package:terralinkapp/features/tasks/sbs/data/entities/api_task_sbs_record_result.dart';
import 'package:terralinkapp/features/tasks/sbs/domain/entities/app_task_sbs_result_type.dart';
import 'package:terralinkapp/features/tasks/sbs_late/data/mappers/api_task_sbs_late_mapper.dart';
import 'package:terralinkapp/features/tasks/sbs_late/domain/entities/api_task_sbs_late.dart';

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
