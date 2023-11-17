// Project imports:
import 'package:terralinkapp/data/mappers/task_vacation/api_task_vacation_block_data_dao_mapper.dart';
import 'package:terralinkapp/data/models/responses/api_task_vacation/api_task_vacation_block_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_vacation/api_task_vacation_block.dart';

extension ApiTaskVacationBlockDaoMapper on ApiTaskVacationBlockDao {
  ApiTaskVacationBlock toDomain() => ApiTaskVacationBlock(
        id,
        blockOpenDefault,
        blockType,
        data.map((e) => e.toDomain()).toList(),
      );
}
