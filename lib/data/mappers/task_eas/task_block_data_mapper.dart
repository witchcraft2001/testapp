// Project imports:
import 'package:terralinkapp/data/models/responses/block_data_response.dart';
import 'package:terralinkapp/domain/models/app_task_eas/app_task_eas_block_data.dart';

extension TaskBlockDataExtensions on BlockDataResponse {
  AppTaskEASBlockData toDomain() => AppTaskEASBlockData(id, title, value, sort);
}
