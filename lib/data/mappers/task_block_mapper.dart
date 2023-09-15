// Project imports:
import 'package:terralinkapp/data/mappers/task_block_data_mapper.dart';
import 'package:terralinkapp/data/models/responses/block_response.dart';
import 'package:terralinkapp/domain/task_block.dart';

extension TaskBlockExtensions on BlockResponse {
  TaskBlock toDomain() => TaskBlock(
        id,
        blockOpenDefault,
        blockType,
        data.map((e) => e.toDomain()).toList(),
      );
}
