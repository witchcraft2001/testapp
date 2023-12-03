// Project imports:
import 'package:terralinkapp/features/tasks/eas/data/dao/api_task_eas/api_task_eas_dao.dart';
import 'package:terralinkapp/features/tasks/eas/data/mappers/task_eas/api_task_eas_action_dao_mapper.dart';
import 'package:terralinkapp/features/tasks/eas/data/mappers/task_eas/api_task_eas_block_dao_mapper.dart';
import 'package:terralinkapp/features/tasks/eas/domain/entities/api_task_eas.dart';

extension ApiTaskEasDaoMapper on ApiTaskEasDao {
  ApiTaskEas toDomain() => ApiTaskEas(
        id,
        state,
        createdAt,
        blocks.map((e) => e.toDomain()).toList(),
        actions.map((e) => e.toDomain()).toList(),
      );
}
