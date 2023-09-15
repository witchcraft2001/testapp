// Project imports:
import 'package:terralinkapp/data/models/responses/block_response.dart';
import 'action_response.dart';

class TaskResponse {
  final String id;
  final String? state;
  final DateTime createdAt;
  final List<BlockResponse> blocks;
  final List<ActionResponse> actions;

  TaskResponse(this.id, this.state, this.createdAt, this.blocks, this.actions);

  TaskResponse.fromMappedJson(Map<String, dynamic> json)
      : id = json['id'],
        state = json['createdAt'],
        createdAt = DateTime.parse(json['createdAt']),
        blocks = BlockResponseList.fromMappedJson(json['blocks']).list,
        actions = ActionResponseList.fromMappedJson(json['actions']).list;
}

class TaskResponseList {
  List<TaskResponse> list = List.empty();

  TaskResponseList(this.list);

  TaskResponseList.fromMappedJson(List<dynamic>? json) {
    list =
        json == null ? List.empty() : json.map((e) => TaskResponse.fromMappedJson(e)).toList();
  }
}
