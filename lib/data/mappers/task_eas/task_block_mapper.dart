// Project imports:
import 'package:terralinkapp/data/mappers/task_eas/task_block_data_mapper.dart';
import 'package:terralinkapp/data/models/responses/block_response.dart';
import 'package:terralinkapp/domain/models/app_task_eas/app_task_eas_block.dart';

extension TaskBlockExtensions on BlockResponse {
  AppTaskEASBlock toDomain() => AppTaskEASBlock(
        id,
        blockOpenDefault,
        blockType,
        data.map((e) => e.toDomain()).toList(),
      );
}
