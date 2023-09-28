// Project imports:
import 'package:terralinkapp/domain/task.dart';

abstract class TasksRepository {
  Future<List<Task>> getAll([String? search]);

  Future<void> setStatus({
    required String id,
    required int actionId,
    required String actionResult,
    required String? comment,
    required String method,
    required String url,
  });

  Future<void> clearTasksCache();
}
