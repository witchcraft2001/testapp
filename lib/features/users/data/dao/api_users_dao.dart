// Project imports:
import 'package:terralinkapp/features/users/data/dao/api_user_dao.dart';

class ApiUsersDao {
  final int count;
  final List<ApiUserDao> results;
  final String? next, previous;

  const ApiUsersDao({
    required this.count,
    required this.results,
    this.next,
    this.previous,
  });

  ApiUsersDao.fromJson(Map<String, dynamic> json)
      : count = json['count'],
        results = json['results'] == null
            ? List.empty()
            : _ApiUsersListDao.fromJson(json['results']).list,
        next = json['next'],
        previous = json['previous'];
}

class _ApiUsersListDao {
  List<ApiUserDao> list = List.empty();

  _ApiUsersListDao(this.list);

  _ApiUsersListDao.fromJson(List<dynamic>? json) {
    list = json == null ? List.empty() : json.map((e) => ApiUserDao.fromJson(e)).toList();
  }
}
