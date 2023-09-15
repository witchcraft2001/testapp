// Project imports:
import 'task_action_value.dart';

class TaskAction {
  final String id;
  final String title;
  final TaskActionValue value;
  final String method;
  final String url;

  TaskAction(this.id, this.title, this.value, this.method, this.url);
}
