// Project imports:
import 'api_task_eas_block_data.dart';

class ApiTaskEasBlock {
  final String id;
  final bool blockOpenDefault;
  final String blockType;
  final List<ApiTaskEasBlockData> data;

  ApiTaskEasBlock(
    this.id,
    this.blockOpenDefault,
    this.blockType,
    this.data,
  );
}
