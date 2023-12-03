// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/services/user_service/user_service.dart';

@lazySingleton
class AuthInterceptor extends InterceptorsWrapper {
  final UserService _userService;

  AuthInterceptor(this._userService);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = _userService.getUser()?.token;
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    handler.next(options);
  }
}
