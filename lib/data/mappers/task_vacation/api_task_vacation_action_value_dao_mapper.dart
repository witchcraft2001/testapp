// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_vacation/api_task_vacation_action_value_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_vacation/api_task_vacation_action_value.dart';

extension ApiTaskVacationActionValueDaoMapper on ApiTaskVacationActionValueDao {
  ApiTaskVacationActionValue toDomain() => ApiTaskVacationActionValue(id, result, comment);
}
