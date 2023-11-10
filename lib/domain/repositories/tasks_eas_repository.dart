// Project imports:
import 'package:terralinkapp/domain/entities/api_task_eas/api_task_eas.dart';

abstract class TasksEasRepository {
  Stream<int> stream = const Stream.empty();

  Future<List<ApiTaskEas>> getAll([String? search]);

  Future<void> completeTask({
    required String id,
    required int actionId,
    required String actionResult,
    required String? comment,
    required String method,
    required String url,
  });

  Future<void> clearCache();
}
