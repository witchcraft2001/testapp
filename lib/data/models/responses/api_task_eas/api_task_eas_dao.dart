// Project imports:
import 'package:terralinkapp/data/models/responses/block_response.dart';
import '../action_response.dart';

class ApiTaskEASDao {
  final String id;
  final String? state;
  final DateTime createdAt;
  final List<BlockResponse> blocks;
  final List<ActionResponse> actions;

  ApiTaskEASDao(
    this.id,
    this.state,
    this.createdAt,
    this.blocks,
    this.actions,
  );

  ApiTaskEASDao.fromMappedJson(Map<String, dynamic> json)
      : id = json['id'],
        state = json['createdAt'],
        createdAt = DateTime.parse(json['createdAt']),
        blocks = BlockResponseList.fromMappedJson(json['blocks']).list,
        actions = ActionResponseList.fromMappedJson(json['actions']).list;
}
