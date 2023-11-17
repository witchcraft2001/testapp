// Project imports:
import 'package:terralinkapp/data/mappers/task_vacation/api_task_vacation_action_dao_mapper.dart';
import 'package:terralinkapp/data/mappers/task_vacation/api_task_vacation_block_dao_mapper.dart';
import 'package:terralinkapp/data/models/responses/api_task_vacation/api_task_vacation_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_vacation/api_task_vacation.dart';

extension ApiTaskVacationDaoMapper on ApiTaskVacationDao {
  ApiTaskVacation toDomain() => ApiTaskVacation(
        id,
        createdAt,
        blocks.map((e) => e.toDomain()).toList(),
        actions.map((e) => e.toDomain()).toList(),
      );
}
