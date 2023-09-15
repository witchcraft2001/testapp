// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:terralinkapp/common/exceptions/http_service_exception.dart';
import 'package:terralinkapp/data/providers/navigator_key_provider.dart';
import 'package:terralinkapp/data/services/http/http_service.dart';
import 'package:terralinkapp/data/services/http/interceptors/auth_interceptor.dart';
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/data/use_cases/auth/oauth_try_login_use_case.dart';
import 'package:terralinkapp/presentation/navigation/app_routes.dart';

abstract class AuthHttpService extends HttpService {
  final OAuthTryLoginUseCase _oAuthTryLoginUseCase;
  final NavigatorKeyProvider _navigatorKeyProvider;
  final LogService _logService;

  AuthHttpService(
    Dio dio,
    this._logService,
    AuthInterceptor authInterceptor,
    this._oAuthTryLoginUseCase,
    this._navigatorKeyProvider,
  ) : super(dio, _logService, interceptorList: [authInterceptor]);

  @override
  Future<dynamic> request({
    required String url,
    Method method = Method.GET,
    Map<String, dynamic>? params,
  }) async {
    int attempts = 1;
    do {
      try {
        return await super.request(url: url, method: method, params: params);
      } on UnauthorizedHttpException {
        if (attempts > 0) {
          try {
            await _logService.log('$runtimeType try to refresh accessToken');
            await _oAuthTryLoginUseCase.run();
          } catch (e, stack) {
            await _logService.recordError(e, stack);
            break;
          }
        }
      }
      catch (e) {
        rethrow;
      }
    } while (attempts-- > 0);

    _navigatorKeyProvider.rootNavigatorKey.currentState
        ?.pushNamedAndRemoveUntil(AppRoutes.auth.name, (route) => false);

    throw UnauthorizedHttpException();
  }
}
