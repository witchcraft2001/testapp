// Project imports:
import 'package:terralinkapp/features/tasks/eas/data/dao/api_task_eas/api_task_eas_action_value_dao.dart';
import 'package:terralinkapp/features/tasks/eas/domain/entities/api_task_eas_action_value.dart';

extension ApiTaskEasActionValueDaoMapper on ApiTaskEasActionValueDao {
  ApiTaskEasActionValue toDomain() => ApiTaskEasActionValue(id, result, comment);
}
