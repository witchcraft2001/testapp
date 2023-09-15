// Project imports:
import 'package:terralinkapp/data/mappers/task_action_mapper.dart';
import 'package:terralinkapp/data/mappers/task_block_mapper.dart';
import 'package:terralinkapp/data/models/responses/task_response.dart';
import 'package:terralinkapp/domain/task.dart';

extension TaskExtensions on TaskResponse {
  Task toDomain() => Task(
        id,
        state,
        createdAt,
        blocks.map((e) => e.toDomain()).toList(),
        actions.map((e) => e.toDomain()).toList(),
      );
}
