// Project imports:
import 'package:terralinkapp/data/mappers/task_eas/task_action_mapper.dart';
import 'package:terralinkapp/data/mappers/task_eas/task_block_mapper.dart';
import 'package:terralinkapp/data/models/responses/api_task_eas/api_task_eas_dao.dart';
import 'package:terralinkapp/domain/models/app_task_eas/app_task_eas.dart';

extension TaskExtensions on ApiTaskEASDao {
  AppTaskEAS toDomain() => AppTaskEAS(
        id,
        state,
        createdAt,
        blocks.map((e) => e.toDomain()).toList(),
        actions.map((e) => e.toDomain()).toList(),
      );
}
