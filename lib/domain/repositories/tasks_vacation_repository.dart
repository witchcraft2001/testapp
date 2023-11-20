// Project imports:
import 'package:terralinkapp/domain/entities/api_task_vacation/api_task_vacation.dart';

abstract class TasksVacationRepository {
  Stream<int> stream = const Stream.empty();

  Future<List<ApiTaskVacation>> getAll([String? search]);
  Future<void> completeTask(String id);
  Future<void> clearCache();
}
