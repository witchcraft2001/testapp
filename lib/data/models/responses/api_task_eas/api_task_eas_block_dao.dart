// Project imports:
import 'api_task_eas_block_data_dao.dart';

class ApiTaskEasBlockDao {
  final String id;
  final bool blockOpenDefault;
  final String blockType;
  final List<ApiTaskEasBlockDataDao> data;

  ApiTaskEasBlockDao(
    this.id,
    this.blockOpenDefault,
    this.blockType,
    this.data,
  );

  ApiTaskEasBlockDao.fromMappedJson(Map<String, dynamic> json)
      : id = json['id'],
        blockOpenDefault = json['blockOpenDefault'],
        blockType = json['blockType'],
        data = _ApiTaskEasBlocksDataDao.fromMappedJson(json['data']).list;
}

class _ApiTaskEasBlocksDataDao {
  List<ApiTaskEasBlockDataDao> list = List.empty();

  _ApiTaskEasBlocksDataDao(this.list);

  _ApiTaskEasBlocksDataDao.fromMappedJson(List<dynamic>? json) {
    list = json == null
        ? List.empty()
        : json.map((e) => ApiTaskEasBlockDataDao.fromMappedJson(e)).toList();
  }
}
