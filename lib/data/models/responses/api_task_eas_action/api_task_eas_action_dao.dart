// Project imports:
import 'package:terralinkapp/data/models/responses/action_value_response.dart';

class ApiTaskEASActionDao {
  final String id;
  final String title;
  final ActionValueResponse value;
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
        value = ActionValueResponse.fromMappedJson(json['value']),
        method = json['method'],
        url = json['url'];
}
