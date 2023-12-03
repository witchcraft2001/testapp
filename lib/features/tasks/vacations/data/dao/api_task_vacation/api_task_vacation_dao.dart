// Project imports:
import 'package:terralinkapp/features/tasks/vacations/data/dao/api_task_vacation/api_task_vacation_action_dao.dart';
import 'package:terralinkapp/features/tasks/vacations/data/dao/api_task_vacation/api_task_vacation_block_dao.dart';

class ApiTaskVacationDao {
  final String id;
  final DateTime createdAt;
  final List<ApiTaskVacationBlockDao> blocks;
  final List<ApiTaskVacationActionDao> actions;

  ApiTaskVacationDao(
    this.id,
    this.createdAt,
    this.blocks,
    this.actions,
  );

  ApiTaskVacationDao.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        createdAt = DateTime.parse(json['createdAt']),
        blocks = _ApiTaskVacationBlocks.fromJson(json['blocks']).list,
        actions = _ApiTaskVacationActions.fromJson(json['actions']).list;
}

class _ApiTaskVacationBlocks {
  List<ApiTaskVacationBlockDao> list = List.empty();

  _ApiTaskVacationBlocks(this.list);

  _ApiTaskVacationBlocks.fromJson(List<dynamic>? json) {
    list =
        json == null ? List.empty() : json.map((e) => ApiTaskVacationBlockDao.fromJson(e)).toList();
  }
}

class _ApiTaskVacationActions {
  List<ApiTaskVacationActionDao> list = List.empty();

  _ApiTaskVacationActions(this.list);

  _ApiTaskVacationActions.fromJson(List<dynamic>? json) {
    list = json == null
        ? List.empty()
        : json.map((e) => ApiTaskVacationActionDao.fromJson(e)).toList();
  }
}
