// Project imports:
import 'package:terralinkapp/features/tasks/eas/data/dao/api_task_eas/api_task_eas_block_dao.dart';
import 'package:terralinkapp/features/tasks/eas/data/mappers/task_eas/api_task_eas_block_data_dao_mapper.dart';
import 'package:terralinkapp/features/tasks/eas/domain/entities/api_task_eas_block.dart';

extension ApiTaskEasBlockDaoMapper on ApiTaskEasBlockDao {
  ApiTaskEasBlock toDomain() => ApiTaskEasBlock(
        id,
        blockOpenDefault,
        blockType,
        data.map((e) => e.toDomain()).toList(),
      );
}
