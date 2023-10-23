// Project imports:
import '../api_task_eas_block_data/api_task_eas_block_data_dao.dart';

class ApiTaskEASBlockDao {
  final String id;
  final bool blockOpenDefault;
  final String blockType;
  final List<ApiTaskEASBlockDataDao> data;

  ApiTaskEASBlockDao(
    this.id,
    this.blockOpenDefault,
    this.blockType,
    this.data,
  );

  ApiTaskEASBlockDao.fromMappedJson(Map<String, dynamic> json)
      : id = json['id'],
        blockOpenDefault = json['blockOpenDefault'],
        blockType = json['blockType'],
        data = _ApiTaskEASBlocksDataDao.fromMappedJson(json['data']).list;
}

class _ApiTaskEASBlocksDataDao {
  List<ApiTaskEASBlockDataDao> list = List.empty();

  _ApiTaskEASBlocksDataDao(this.list);

  _ApiTaskEASBlocksDataDao.fromMappedJson(List<dynamic>? json) {
    list = json == null
        ? List.empty()
        : json.map((e) => ApiTaskEASBlockDataDao.fromMappedJson(e)).toList();
  }
}
