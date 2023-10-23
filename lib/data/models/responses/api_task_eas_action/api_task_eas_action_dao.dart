// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_eas_action_value/api_task_eas_action_value_dao.dart';

class ApiTaskEASActionDao {
  final String id;
  final String title;
  final ApiTaskEASActionValueDao value;
  final String method;
  final String url;

  ApiTaskEASActionDao(
    this.id,
    this.title,
    this.value,
    this.method,
    this.url,
  );

  ApiTaskEASActionDao.fromMappedJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        value = ApiTaskEASActionValueDao.fromMappedJson(json['value']),
        method = json['method'],
        url = json['url'];
}
