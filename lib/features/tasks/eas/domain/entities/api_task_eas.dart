// Project imports:
import 'api_task_eas_action.dart';
import 'api_task_eas_block.dart';

class ApiTaskEas {
  final String id;
  final String? state;
  final DateTime createdAt;
  final List<ApiTaskEasBlock> blocks;
  final List<ApiTaskEasAction> actions;

  ApiTaskEas(
    this.id,
    this.state,
    this.createdAt,
    this.blocks,
    this.actions,
  );
}
