// Project imports:
import 'package:terralinkapp/features/tasks/eas/data/dao/api_task_eas/api_task_eas_action_dao.dart';
import 'package:terralinkapp/features/tasks/eas/data/mappers/task_eas/api_task_eas_action_value_dao_mapper.dart';
import 'package:terralinkapp/features/tasks/eas/domain/entities/api_task_eas_action.dart';

extension ApiTaskEasActionDaoMapper on ApiTaskEasActionDao {
  ApiTaskEasAction toDomain() => ApiTaskEasAction(
        id,
        title,
        value.toDomain(),
        method,
        url,
      );
}
