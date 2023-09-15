// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/common/constants.dart';
import 'package:terralinkapp/data/providers/dio_provider.dart';
import 'package:terralinkapp/data/providers/navigator_key_provider.dart';
import 'package:terralinkapp/data/services/http/auth_http_service.dart';
import 'package:terralinkapp/data/services/http/interceptors/auth_interceptor.dart';
import 'package:terralinkapp/data/services/http/interceptors/locale_interceptor.dart';
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/data/use_cases/auth/oauth_try_login_use_case.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class TasksApiService extends AuthHttpService {
  TasksApiService(
    Constants constants,
    DioProvider dioProvider,
    LogService logService,
    LocaleInterceptor localeInterceptor,
    AuthInterceptor authInterceptor,
    OAuthTryLoginUseCase oAuthTryLoginUseCase,
    NavigatorKeyProvider navigatorKeyProvider,
  ) : super(
          dioProvider.provideDio(constants.getApiBaseUrl(), interceptorList: [localeInterceptor]),
          logService,
          authInterceptor,
          oAuthTryLoginUseCase,
          navigatorKeyProvider,
        );
}
