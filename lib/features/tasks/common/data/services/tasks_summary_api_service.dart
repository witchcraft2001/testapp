// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/http/interceptors/auth_interceptor.dart';
import 'package:terralinkapp/core/http/interceptors/locale_interceptor.dart';
import 'package:terralinkapp/core/http/providers/dio_provider.dart';
import 'package:terralinkapp/core/http/services/auth_http_service.dart';
import 'package:terralinkapp/core/navigation/navigator_key_provider.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/features/auth/data/use_cases/oauth_try_login_use_case.dart';
import 'package:terralinkapp/features/settings/data/use_cases/get_tasks_summary_api_base_url_use_case.dart';

@LazySingleton(
  env: [Environment.dev, Environment.prod],
)
class TasksSummaryApiService extends AuthHttpService {
  final GetTasksSummaryApiBaseUrlUseCase _getTasksApiBaseUrlUseCase;

  TasksSummaryApiService(
    this._getTasksApiBaseUrlUseCase,
    DioProvider dioProvider,
    LogService logService,
    LocaleInterceptor localeInterceptor,
    AuthInterceptor authInterceptor,
    OAuthTryLoginUseCase oAuthTryLoginUseCase,
    NavigatorKeyProvider navigatorKeyProvider,
  ) : super(
          dioProvider.provideDio(interceptorList: [localeInterceptor]),
          logService,
          authInterceptor,
          oAuthTryLoginUseCase,
          navigatorKeyProvider,
        );

  @override
  String get baseUrl => _getTasksApiBaseUrlUseCase.run();
}
