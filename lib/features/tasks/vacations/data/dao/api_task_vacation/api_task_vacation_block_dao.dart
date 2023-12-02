// Project imports:
import 'package:terralinkapp/features/tasks/vacations/data/dao/api_task_vacation/api_task_vacation_block_data_dao.dart';

class ApiTaskVacationBlockDao {
  final String id;
  final bool blockOpenDefault;
  final String blockType;
  final List<ApiTaskVacationBlockDataDao> data;

  ApiTaskVacationBlockDao(
    this.id,
    this.blockOpenDefault,
    this.blockType,
    this.data,
  );

  ApiTaskVacationBlockDao.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        blockOpenDefault = json['blockOpenDefault'],
        blockType = json['blockType'],
        data = _ApiTaskVacationBlocksDataDao.fromJson(json['data']).list;
}

class _ApiTaskVacationBlocksDataDao {
  List<ApiTaskVacationBlockDataDao> list = List.empty();

  _ApiTaskVacationBlocksDataDao(this.list);

  _ApiTaskVacationBlocksDataDao.fromJson(List<dynamic>? json) {
    list = json == null
        ? List.empty()
        : json.map((e) => ApiTaskVacationBlockDataDao.fromJson(e)).toList();
  }
}
