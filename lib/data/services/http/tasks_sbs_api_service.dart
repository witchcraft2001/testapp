// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/providers/dio_provider.dart';
import 'package:terralinkapp/data/providers/navigator_key_provider.dart';
import 'package:terralinkapp/data/services/http/auth_http_service.dart';
import 'package:terralinkapp/data/services/http/interceptors/auth_interceptor.dart';
import 'package:terralinkapp/data/services/http/interceptors/locale_interceptor.dart';
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/data/use_cases/auth/oauth_try_login_use_case.dart';
import 'package:terralinkapp/data/use_cases/settings/get_tasks_sbs_api_base_url_use_case.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class TasksSbsApiService extends AuthHttpService {
  final GetTasksSbsApiBaseUrlUseCase _getTasksSbsApiBaseUrlUseCase;

  TasksSbsApiService(
    this._getTasksSbsApiBaseUrlUseCase,
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
  String get baseUrl => _getTasksSbsApiBaseUrlUseCase.run();
}
