// Project imports:
import 'package:terralinkapp/features/tasks/summary/data/dao/api_task_summary_system_dao.dart';

class ApiTaskSummaryDao {
  final String title;
  final ApiTasksSummarySystemDao system;
  final int count;

  ApiTaskSummaryDao(
    this.title,
    this.system,
    this.count,
  );

  ApiTaskSummaryDao.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        system = ApiTasksSummarySystemDao.fromJson(json['system']),
        count = json['count'];
}
