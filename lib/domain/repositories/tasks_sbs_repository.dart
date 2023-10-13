// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_dao.dart';

abstract class TasksSBSRepository {
  Future<List<ApiTaskSBSDao>> getAll([String? search]);

  Future<void> completeTask();

  Future<void> clearCache();
}
