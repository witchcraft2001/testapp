// Project imports:
import 'package:terralinkapp/data/models/responses/action_value_response.dart';
import 'package:terralinkapp/domain/task_action_value.dart';

extension TaskActionValueExtensions on ActionValueResponse {
  TaskActionValue toDomain() => TaskActionValue(id, result, comment);
}
