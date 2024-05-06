// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/repository_exception.dart';
import 'package:terralinkapp/core/http/api_routes.dart';
import 'package:terralinkapp/core/http/services/http_service.dart';
import 'package:terralinkapp/core/services/admin_panel_api_service.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/features/system_settings/data/dao/system_settings_dao.dart';

abstract class SystemSettingsRemoteDataSource {
  Future<SystemSettingsDao> get();
}

@LazySingleton(
  as: SystemSettingsRemoteDataSource,
  env: [Environment.dev, Environment.prod],
)
class SystemSettingsRemoteDataSourceImpl extends SystemSettingsRemoteDataSource {
  final AdminPanelApiService _adminPanelService;
  final LogService _logService;

  SystemSettingsRemoteDataSourceImpl(
    this._adminPanelService,
    this._logService,
  );

  @override
  Future<SystemSettingsDao> get() async {
    try {
      final response = await _adminPanelService.request(
        url: ApiRoutes.systemSettings,
        method: Method.GET,
      );

      if (response.statusCode == 200) {
        return SystemSettingsDao.fromJson(response.data);
      } else {
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      return const SystemSettingsDao();
    }
  }
}
