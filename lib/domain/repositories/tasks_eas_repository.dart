// Project imports:
import 'package:terralinkapp/domain/models/app_task_eas/app_task_eas.dart';

abstract class TasksEASRepository {
  Future<List<AppTaskEAS>> getAll([String? search]);

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
