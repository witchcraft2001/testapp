// Project imports:
import 'package:terralinkapp/data/mappers/task_eas/task_action_value_mapper.dart';
import 'package:terralinkapp/data/models/responses/action_response.dart';
import 'package:terralinkapp/domain/models/app_task_eas/app_task_eas_action.dart';

extension TaskActionExtensions on ActionResponse {
  AppTaskEASAction toDomain() => AppTaskEASAction(
        id,
        title,
        value.toDomain(),
        method,
        url,
      );
}
