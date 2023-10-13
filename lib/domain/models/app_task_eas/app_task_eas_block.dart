// Project imports:
import 'app_task_eas_block_data.dart';

class AppTaskEASBlock {
  final String id;
  final bool blockOpenDefault;
  final String blockType;
  final List<AppTaskEASBlockData> data;

  AppTaskEASBlock(
    this.id,
    this.blockOpenDefault,
    this.blockType,
    this.data,
  );
}
