// Project imports:
import 'package:terralinkapp/data/mappers/task_eas/api_task_eas_block_data_dao_mapper.dart';
import 'package:terralinkapp/data/models/responses/api_task_eas/api_task_eas_block_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_eas/api_task_eas_block.dart';

extension ApiTaskEasBlockDaoMapper on ApiTaskEasBlockDao {
  ApiTaskEasBlock toDomain() => ApiTaskEasBlock(
        id,
        blockOpenDefault,
        blockType,
        data.map((e) => e.toDomain()).toList(),
      );
}
