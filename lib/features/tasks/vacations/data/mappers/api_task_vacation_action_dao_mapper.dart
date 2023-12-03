// Project imports:
import 'package:terralinkapp/features/tasks/vacations/data/dao/api_task_vacation/api_task_vacation_action_dao.dart';
import 'package:terralinkapp/features/tasks/vacations/data/mappers/api_task_vacation_action_value_dao_mapper.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/entities/api_task_vacation_action.dart';

extension ApiTaskVacationActionDaoMapper on ApiTaskVacationActionDao {
  ApiTaskVacationAction toDomain() => ApiTaskVacationAction(
        id,
        title,
        value.toDomain(),
        method,
        url,
      );
}
