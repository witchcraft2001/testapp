// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/domain/entities/api_task_sbs_weekly.dart';

class TaskSbsWeeklyUseCaseParams implements UseCaseParams {
  TaskSbsWeeklyUseCaseParams(this.task);

  final ApiTaskSbsWeekly task;
}
