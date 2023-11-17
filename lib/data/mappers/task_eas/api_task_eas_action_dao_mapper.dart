// Project imports:
import 'package:terralinkapp/data/mappers/task_eas/api_task_eas_action_value_dao_mapper.dart';
import 'package:terralinkapp/data/models/responses/api_task_eas/api_task_eas_action_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_eas/api_task_eas_action.dart';

extension ApiTaskEasActionDaoMapper on ApiTaskEasActionDao {
  ApiTaskEasAction toDomain() => ApiTaskEasAction(
        id,
        title,
        value.toDomain(),
        method,
        url,
      );
}
