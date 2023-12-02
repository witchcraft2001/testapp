// Project imports:
import 'package:terralinkapp/features/tasks/vacations/data/dao/api_task_vacation/api_task_vacation_block_dao.dart';
import 'package:terralinkapp/features/tasks/vacations/data/mappers/api_task_vacation_block_data_dao_mapper.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/entities/api_task_vacation_block.dart';

extension ApiTaskVacationBlockDaoMapper on ApiTaskVacationBlockDao {
  ApiTaskVacationBlock toDomain() => ApiTaskVacationBlock(
        id,
        blockOpenDefault,
        blockType,
        data.map((e) => e.toDomain()).toList(),
      );
}
