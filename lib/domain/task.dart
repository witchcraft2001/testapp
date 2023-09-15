// Project imports:
import 'task_action.dart';
import 'task_block.dart';

class Task {
  final String id;
  final String? state;
  final DateTime createdAt;
  final List<TaskBlock> blocks;
  final List<TaskAction> actions;

  Task(this.id, this.state, this.createdAt, this.blocks, this.actions);
}
