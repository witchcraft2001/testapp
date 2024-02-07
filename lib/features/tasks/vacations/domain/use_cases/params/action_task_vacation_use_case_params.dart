// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/entities/api_task_vacation_action.dart';

class ActionTaskVacationUseCaseParams implements UseCaseParams {
  ActionTaskVacationUseCaseParams(this.action, this.comment);

  final ApiTaskVacationAction action;
  final String? comment;
}
