// Project imports:
import 'package:terralinkapp/data/mappers/task_vacation/api_task_vacation_action_value_dao_mapper.dart';
import 'package:terralinkapp/data/models/responses/api_task_vacation/api_task_vacation_action_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_vacation/api_task_vacation_action.dart';

extension ApiTaskVacationActionDaoMapper on ApiTaskVacationActionDao {
  ApiTaskVacationAction toDomain() => ApiTaskVacationAction(
        id,
        title,
        value.toDomain(),
        method,
        url,
      );
}
