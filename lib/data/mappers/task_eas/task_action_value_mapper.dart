// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_eas_action_value/api_task_eas_action_value_dao.dart';
import 'package:terralinkapp/domain/task_action_value.dart';

extension TaskActionValueExtensions on ApiTaskEASActionValueDao {
  TaskActionValue toDomain() => TaskActionValue(id, result, comment);
}
