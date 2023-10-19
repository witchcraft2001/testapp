// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_dao.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_register_record_result.dart';

abstract class TasksSBSRepository {
  Future<List<ApiTaskSBSDao>> getAll([String? search]);

  Future<void> completeTask(List<AppTaskSBSRegisterRecordResult> records);

  Future<void> clearCache();
}
