// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/features/tasks/sbs_late/domain/entities/api_task_sbs_late.dart';

class TasksSbsUseCaseParams implements UseCaseParams {
  TasksSbsUseCaseParams(this.tasks);

  final List<ApiTaskSbsLate> tasks;
}
