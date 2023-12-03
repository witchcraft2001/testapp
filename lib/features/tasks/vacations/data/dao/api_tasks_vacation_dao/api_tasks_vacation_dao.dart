// Project imports:
import 'package:terralinkapp/features/tasks/vacations/data/dao/api_task_vacation/api_task_vacation_dao.dart';

class ApiTasksVacationDao {
  final List<ApiTaskVacationDao> results;

  ApiTasksVacationDao(
    this.results,
  );

  ApiTasksVacationDao.fromJson(Map<String, dynamic> json)
      : results = json['results'] == null
            ? List.empty()
            : _ApiTasksVacationDao.fromJson(json['results']).list;
}

class _ApiTasksVacationDao {
  List<ApiTaskVacationDao> list = List.empty();

  _ApiTasksVacationDao(this.list);

  _ApiTasksVacationDao.fromJson(List<dynamic>? json) {
    list = json == null ? List.empty() : json.map((e) => ApiTaskVacationDao.fromJson(e)).toList();
  }
}
