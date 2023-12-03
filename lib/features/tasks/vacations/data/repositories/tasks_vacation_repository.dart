// Project imports:
import 'package:terralinkapp/features/tasks/vacations/domain/entities/api_task_vacation.dart';

abstract class TasksVacationRepository {
  Stream<int> get stream;

  Future<List<ApiTaskVacation>> getAll([String? search]);
  Future<void> completeTask(String id);
  Future<void> clearCache();
}
