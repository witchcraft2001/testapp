// Project imports:
import 'package:terralinkapp/features/tasks/vacations/data/dao/api_task_vacation/api_task_vacation_action_value_dao.dart';

class ApiTaskVacationActionDao {
  final String id;
  final String title;
  final ApiTaskVacationActionValueDao value;
  final String method;
  final String url;

  ApiTaskVacationActionDao(
    this.id,
    this.title,
    this.value,
    this.method,
    this.url,
  );

  ApiTaskVacationActionDao.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        value = ApiTaskVacationActionValueDao.fromJson(json['value']),
        method = json['method'],
        url = json['url'];
}
