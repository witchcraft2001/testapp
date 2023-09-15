// Project imports:
import 'package:terralinkapp/data/models/responses/block_data_response.dart';
import 'package:terralinkapp/domain/task_block_data.dart';

extension TaskBlockDataExtensions on BlockDataResponse {
  TaskBlockData toDomain() => TaskBlockData(id, title, value, sort);
}
