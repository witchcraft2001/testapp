// Project imports:
import 'task_block_data.dart';

class TaskBlock {
  final String id;
  final bool blockOpenDefault;
  final String blockType;
  final List<TaskBlockData> data;

  TaskBlock(this.id, this.blockOpenDefault, this.blockType, this.data);
}
