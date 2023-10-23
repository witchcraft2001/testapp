// Project imports:
import '../api_task_eas/api_task_eas_dao.dart';

class ApiTasksEASDao {
  final List<ApiTaskEASDao> results;

  ApiTasksEASDao(this.results);

  ApiTasksEASDao.fromMappedJson(Map<String, dynamic> json)
      : results = json['results'] == null
            ? List.empty()
            : _ApiTasksEASDao.fromMappedJson(json['results']).list;
}

class _ApiTasksEASDao {
  List<ApiTaskEASDao> list = List.empty();

  _ApiTasksEASDao(this.list);

  _ApiTasksEASDao.fromMappedJson(List<dynamic>? json) {
    list = json == null ? List.empty() : json.map((e) => ApiTaskEASDao.fromMappedJson(e)).toList();
  }
}
