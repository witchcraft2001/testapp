// Project imports:
import 'package:terralinkapp/data/mappers/task_action_value_mapper.dart';
import 'package:terralinkapp/data/models/responses/action_response.dart';
import 'package:terralinkapp/domain/task_action.dart';

extension TaskActionExtensions on ActionResponse {
  TaskAction toDomain() => TaskAction(
        id,
        title,
        value.toDomain(),
        method,
        url,
      );
}
