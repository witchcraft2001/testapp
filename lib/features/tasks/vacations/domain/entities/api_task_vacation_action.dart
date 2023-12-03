// Project imports:
import 'package:terralinkapp/features/tasks/vacations/domain/entities/api_task_vacation_action_value.dart';

class ApiTaskVacationAction {
  final String id;
  final String title;
  final ApiTaskVacationActionValue value;
  final String method;
  final String url;

  ApiTaskVacationAction(
    this.id,
    this.title,
    this.value,
    this.method,
    this.url,
  );
}
