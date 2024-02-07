// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/common/json_keys.dart';
import 'package:terralinkapp/core/exceptions/repository_exception.dart';
import 'package:terralinkapp/core/http/api_routes.dart';
import 'package:terralinkapp/core/http/services/http_service.dart';
import 'package:terralinkapp/core/services/admin_panel_api_service.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/features/users/data/dao/api_users_dao.dart';

abstract class UsersRemoteDataSource {
  Future<ApiUsersDao> getAll({String? search, int? page});
}

@LazySingleton(
  as: UsersRemoteDataSource,
  env: [Environment.dev, Environment.prod],
)
class UsersRemoteDataSourceImpl extends UsersRemoteDataSource {
  final AdminPanelApiService _adminPanelService;
  final LogService _logService;

  UsersRemoteDataSourceImpl(
    this._adminPanelService,
    this._logService,
  );

  @override
  Future<ApiUsersDao> getAll({String? search, int? page}) async {
    try {
      final params = _getParams(search: search, page: page);

      final response = await _adminPanelService.request(
        url: ApiRoutes.users,
        method: Method.GET,
        params: params,
      );

      if (response.statusCode == 200) {
        final users = ApiUsersDao.fromJson(response.data);

        return users;
      } else {
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
    }
  }

  Map<String, dynamic> _getParams({String? search, int? page}) {
    Map<String, dynamic> params = {
      JsonKeys.page: page,
    }..removeWhere((key, value) => value == null);

    if (search != null && search.isNotEmpty) {
      params.addAll({JsonKeys.search: search});
    }

    return params;
  }
}
