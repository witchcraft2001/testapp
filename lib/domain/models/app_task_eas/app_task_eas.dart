// Project imports:
import 'app_task_eas_action.dart';
import 'app_task_eas_block.dart';

class AppTaskEAS {
  final String id;
  final String? state;
  final DateTime createdAt;
  final List<AppTaskEASBlock> blocks;
  final List<AppTaskEASAction> actions;

  AppTaskEAS(
    this.id,
    this.state,
    this.createdAt,
    this.blocks,
    this.actions,
  );
}
