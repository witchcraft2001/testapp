// Project imports:
import 'api_task_vacation_action.dart';
import 'api_task_vacation_block.dart';

class ApiTaskVacation {
  final String id;
  final DateTime createdAt;
  final List<ApiTaskVacationBlock> blocks;
  final List<ApiTaskVacationAction> actions;

  ApiTaskVacation(
    this.id,
    this.createdAt,
    this.blocks,
    this.actions,
  );
}
