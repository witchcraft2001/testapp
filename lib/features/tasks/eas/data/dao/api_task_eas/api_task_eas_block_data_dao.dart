// Project imports:
import 'package:terralinkapp/features/tasks/eas/data/dao/api_task_eas/api_task_eas_block_data_value_dao.dart';

class ApiTaskEasBlockDataDao {
  final String id;
  final String title;
  final List<ApiTaskEasBlockDataValueDao> value;
  final int sort;

  ApiTaskEasBlockDataDao(
    this.id,
    this.title,
    this.value,
    this.sort,
  );

  ApiTaskEasBlockDataDao.fromMappedJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        value = _parseValue(json['value']),
        sort = json['sort'];

  static List<ApiTaskEasBlockDataValueDao> _parseValue(dynamic value) {
    if (value == null) return [];

    try {
      final raw = List.from(value);

      if (raw.isEmpty) return [];

      final List<ApiTaskEasBlockDataValueDao> parsed =
          raw.map((record) => ApiTaskEasBlockDataValueDao.fromJson(record)).toList();

      return parsed;
    } catch (_) {}

    return [ApiTaskEasBlockDataValueDao(name: value as String)];
  }
}
