// Project imports:
import 'package:terralinkapp/data/mappers/task_eas/task_action_value_mapper.dart';
import 'package:terralinkapp/data/models/responses/api_task_eas_action/api_task_eas_action_dao.dart';
import 'package:terralinkapp/domain/models/app_task_eas/app_task_eas_action.dart';

extension ApiTaskEASActionDaoMapper on ApiTaskEASActionDao {
  AppTaskEASAction toDomain() => AppTaskEASAction(
        id,
        title,
        value.toDomain(),
        method,
        url,
      );
}
