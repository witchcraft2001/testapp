// Project imports:
import 'package:terralinkapp/data/mappers/task_eas/api_task_eas_action_dao_mapper.dart';
import 'package:terralinkapp/data/mappers/task_eas/api_task_eas_block_dao_mapper.dart';
import 'package:terralinkapp/data/models/responses/api_task_eas/api_task_eas_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_eas/api_task_eas.dart';

extension ApiTaskEasDaoMapper on ApiTaskEasDao {
  ApiTaskEas toDomain() => ApiTaskEas(
        id,
        state,
        createdAt,
        blocks.map((e) => e.toDomain()).toList(),
        actions.map((e) => e.toDomain()).toList(),
      );
}
