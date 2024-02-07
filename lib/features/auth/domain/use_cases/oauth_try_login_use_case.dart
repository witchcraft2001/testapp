// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:aad_oauth/model/failure.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/unauthorized_exception.dart';
import 'package:terralinkapp/core/extensions/date_time_extensions.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/core/services/user_service/user.dart';
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/auth/data/providers/auth_provider.dart';
import 'package:terralinkapp/features/auth/domain/use_cases/params/user_use_case_params.dart';
import 'user_log_in_use_case.dart';

abstract class OAuthTryLoginUseCase implements AsyncParamlessUseCase<User> {}

@dev
@prod
@Injectable(as: OAuthTryLoginUseCase)
class OAuthTryLoginUseCaseImpl extends OAuthTryLoginUseCase {
  final AuthProvider _authProvider;
  final UserLogInUseCase _userLogInUseCase;
  final LogService _logService;

  OAuthTryLoginUseCaseImpl(this._authProvider, this._userLogInUseCase, this._logService);

  @override
  Future<User> call([UseCaseParams params = const NoParams()]) async {
    final result = await _authProvider.auth.login(refreshIfAvailable: true);

    return await result.fold(
      (failure) async {
        if (failure.errorType != ErrorType.AccessDeniedOrAuthenticationCanceled) {
          await _logService.log('AadOAuthFailure: ${failure.toString()}');
        }
        throw UnauthorizedException(failure.message, reason: failure);
      },
      (token) async {
        final accessToken = token.accessToken;
        if (accessToken == null) {
          await _logService.log('AadOAuthFailure: Unable to retrieve access token');
          throw const UnauthorizedException('Unable to retrieve access token');
        }
        final user = User(accessToken);
        await _userLogInUseCase(UserUseCaseParams(user));

        if (kDebugMode) {
          print('Logged in successfully, your access token: ${token.accessToken}');
          print('Expire In: ${token.expiresIn}');
          print('Expire offset: ${token.expireOffSet}');
          print('Issue time stamp: ${token.issueTimeStamp.toDateTimeString()}');
          print('Expire time stamp: ${token.expireTimeStamp.toDateTimeString()}');
          print('refresh token: ${token.refreshToken}');
          print('id token: ${token.idToken}');
          print('token type: ${token.tokenType}');
        }

        return user;
      },
    );
  }
}
