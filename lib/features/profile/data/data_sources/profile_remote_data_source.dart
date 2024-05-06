// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/common/json_keys.dart';
import 'package:terralinkapp/core/exceptions/repository_exception.dart';
import 'package:terralinkapp/core/http/api_routes.dart';
import 'package:terralinkapp/core/http/services/http_service.dart';
import 'package:terralinkapp/core/services/admin_panel_api_service.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/core/services/user_service/user_service.dart';
import 'package:terralinkapp/features/profile/data/dao/api_profile_dao.dart';

abstract class ProfileRemoteDataSource {
  Future<ApiProfileDao?> get();
}

@LazySingleton(
  as: ProfileRemoteDataSource,
  env: [Environment.dev, Environment.prod],
)
class ProfileRemoteDataSourceImpl extends ProfileRemoteDataSource {
  final AdminPanelApiService _adminPanelService;
  final UserService _userService;
  final LogService _logService;

  ProfileRemoteDataSourceImpl(
    this._adminPanelService,
    this._userService,
    this._logService,
  );

  @override
  Future<ApiProfileDao?> get() async {
    try {
      final login = _userService.getUser()?.login;

      final response = await _adminPanelService.request(
        url: ApiRoutes.profile,
        method: Method.GET,
        params: {
          JsonKeys.login: login,
        },
      );

      if (response.statusCode == 200) {
        return ApiProfileDao.fromJson(response.data);
      } else {
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      return null;
    }
  }
}
