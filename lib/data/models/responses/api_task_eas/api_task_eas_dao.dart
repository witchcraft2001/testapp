// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_eas_block/api_task_eas_block_dao.dart';
import '../api_task_eas_action/api_task_eas_action_dao.dart';

class ApiTaskEASDao {
  final String id;
  final String? state;
  final DateTime createdAt;
  final List<ApiTaskEASBlockDao> blocks;
  final List<ApiTaskEASActionDao> actions;

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
        blocks = _ApiTaskEASBlocks.fromMappedJson(json['blocks']).list,
        actions = _ApiTaskEASActions.fromMappedJson(json['actions']).list;
}

class _ApiTaskEASBlocks {
  List<ApiTaskEASBlockDao> list = List.empty();

  _ApiTaskEASBlocks(this.list);

  _ApiTaskEASBlocks.fromMappedJson(List<dynamic>? json) {
    list = json == null
        ? List.empty()
        : json.map((e) => ApiTaskEASBlockDao.fromMappedJson(e)).toList();
  }
}

class _ApiTaskEASActions {
  List<ApiTaskEASActionDao> list = List.empty();

  _ApiTaskEASActions(this.list);

  _ApiTaskEASActions.fromMappedJson(List<dynamic>? json) {
    list = json == null
        ? List.empty()
        : json.map((e) => ApiTaskEASActionDao.fromMappedJson(e)).toList();
  }
}
