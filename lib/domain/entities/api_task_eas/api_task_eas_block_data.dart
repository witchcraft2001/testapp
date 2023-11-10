// Project imports:
import 'package:terralinkapp/domain/entities/api_task_eas/api_task_eas_block_data_value.dart';

class ApiTaskEasBlockData {
  final String id;
  final String title;
  final List<ApiTaskEasBlockDataValue> value;
  final int sort;

  ApiTaskEasBlockData(
    this.id,
    this.title,
    this.value,
    this.sort,
  );
}
