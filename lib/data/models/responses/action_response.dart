// Project imports:
import 'package:terralinkapp/data/models/responses/action_value_response.dart';

class ActionResponse {
  final String id;
  final String title;
  final ActionValueResponse value;
  final String method;
  final String url;

  ActionResponse(this.id, this.title, this.value, this.method, this.url);

  ActionResponse.fromMappedJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        value = ActionValueResponse.fromMappedJson(json['value']),
        method = json['method'],
        url = json['url'];
}

class ActionResponseList {
  List<ActionResponse> list = List.empty();

  ActionResponseList(this.list);

  ActionResponseList.fromMappedJson(List<dynamic>? json) {
    list =
    json == null ? List.empty() : json.map((e) => ActionResponse.fromMappedJson(e)).toList();
  }
}
