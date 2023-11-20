// Project imports:
import '../api_task_eas/api_task_eas_dao.dart';

class ApiTasksEasDao {
  final List<ApiTaskEasDao> results;

  ApiTasksEasDao(this.results);

  ApiTasksEasDao.fromMappedJson(Map<String, dynamic> json)
      : results = json['results'] == null
            ? List.empty()
            : _ApiTasksEasDao.fromMappedJson(json['results']).list;
}

class _ApiTasksEasDao {
  List<ApiTaskEasDao> list = List.empty();

  _ApiTasksEasDao(this.list);

  _ApiTasksEasDao.fromMappedJson(List<dynamic>? json) {
    list = json == null ? List.empty() : json.map((e) => ApiTaskEasDao.fromMappedJson(e)).toList();
  }
}
