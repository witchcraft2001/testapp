// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/features/tasks/eas/domain/entities/api_task_eas_action.dart';

class ActionTaskEasUseCaseParams implements UseCaseParams {
  ActionTaskEasUseCaseParams(this.action, this.comment);

  final ApiTaskEasAction action;
  final String? comment;
}
