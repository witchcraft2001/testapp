// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_eas/api_task_eas_action_value_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_eas/api_task_eas_action_value.dart';

extension ApiTaskEasActionValueDaoMapper on ApiTaskEasActionValueDao {
  ApiTaskEasActionValue toDomain() => ApiTaskEasActionValue(id, result, comment);
}
