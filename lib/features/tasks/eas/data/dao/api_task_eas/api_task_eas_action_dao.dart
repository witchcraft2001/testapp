// Project imports:
import 'package:terralinkapp/features/tasks/eas/data/dao/api_task_eas/api_task_eas_action_value_dao.dart';

class ApiTaskEasActionDao {
  final String id;
  final String title;
  final ApiTaskEasActionValueDao value;
  final String method;
  final String url;

  ApiTaskEasActionDao(
    this.id,
    this.title,
    this.value,
    this.method,
    this.url,
  );

  ApiTaskEasActionDao.fromMappedJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        value = ApiTaskEasActionValueDao.fromMappedJson(json['value']),
        method = json['method'],
        url = json['url'];
}
