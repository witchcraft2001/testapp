// Project imports:
import 'api_task_eas_action_value.dart';

class ApiTaskEasAction {
  final String id;
  final String title;
  final ApiTaskEasActionValue value;
  final String method;
  final String url;

  ApiTaskEasAction(
    this.id,
    this.title,
    this.value,
    this.method,
    this.url,
  );
}
