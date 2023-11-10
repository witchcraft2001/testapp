// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_eas/api_task_eas_block_dao.dart';
import 'api_task_eas_action_dao.dart';

class ApiTaskEasDao {
  final String id;
  final String? state;
  final DateTime createdAt;
  final List<ApiTaskEasBlockDao> blocks;
  final List<ApiTaskEasActionDao> actions;

  ApiTaskEasDao(
    this.id,
    this.state,
    this.createdAt,
    this.blocks,
    this.actions,
  );

  ApiTaskEasDao.fromMappedJson(Map<String, dynamic> json)
      : id = json['id'],
        state = json['createdAt'],
        createdAt = DateTime.parse(json['createdAt']),
        blocks = _ApiTaskEasBlocks.fromMappedJson(json['blocks']).list,
        actions = _ApiTaskEasActions.fromMappedJson(json['actions']).list;
}

class _ApiTaskEasBlocks {
  List<ApiTaskEasBlockDao> list = List.empty();

  _ApiTaskEasBlocks(this.list);

  _ApiTaskEasBlocks.fromMappedJson(List<dynamic>? json) {
    list = json == null
        ? List.empty()
        : json.map((e) => ApiTaskEasBlockDao.fromMappedJson(e)).toList();
  }
}

class _ApiTaskEasActions {
  List<ApiTaskEasActionDao> list = List.empty();

  _ApiTaskEasActions(this.list);

  _ApiTaskEasActions.fromMappedJson(List<dynamic>? json) {
    list = json == null
        ? List.empty()
        : json.map((e) => ApiTaskEasActionDao.fromMappedJson(e)).toList();
  }
}
