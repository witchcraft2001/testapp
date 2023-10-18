// Project imports:
import 'package:terralinkapp/data/models/requests/api_tasks_sbs_result/api_tasks_sbs_result.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_dao.dart';

abstract class TasksSBSRepository {
  Future<List<ApiTaskSBSDao>> getAll([String? search]);

  Future<void> completeTask(List<ApiTasksSBSResult> records);

  Future<void> clearCache();
}
