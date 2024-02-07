// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/http/providers/dio_provider.dart';
import 'package:terralinkapp/core/http/services/http_service.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_admin_panel_api_base_url_use_case.dart';

@LazySingleton(
  env: [Environment.dev, Environment.prod],
)
class AdminPanelApiService extends HttpService {
  final GetAdminPanelApiBaseUrlUseCase _getApiBaseUrlUseCase;

  AdminPanelApiService(
    DioProvider dioProvider,
    LogService logService,
    this._getApiBaseUrlUseCase,
  ) : super(dioProvider.provideDio(), logService);

  @override
  String get baseUrl => _getApiBaseUrlUseCase();
}
