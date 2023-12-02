// Project imports:
import 'package:terralinkapp/features/tasks/vacations/domain/entities/api_task_vacation_block_data.dart';

class ApiTaskVacationBlock {
  final String id;
  final bool blockOpenDefault;
  final String blockType;
  final List<ApiTaskVacationBlockData> data;

  ApiTaskVacationBlock(
    this.id,
    this.blockOpenDefault,
    this.blockType,
    this.data,
  );
}
