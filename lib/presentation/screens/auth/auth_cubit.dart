// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/providers/auth_provider.dart';
import 'package:terralinkapp/data/providers/push_notifications_provider.dart';
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/data/use_cases/auth/oauth_try_login_use_case.dart';
import 'package:terralinkapp/presentation/screens/auth/auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final PushNotificationsProvider _pushNotificationsProvider;
  final AuthProvider _authProvider;
  final OAuthTryLoginUseCase _oauthTryLoginUseCase;
  final LogService _logService;

  AuthCubit(
    this._pushNotificationsProvider,
    this._authProvider,
    this._oauthTryLoginUseCase,
    this._logService,
  ) : super(InitState());

  Future onInit() async {
    emit(LoadingState());
    // Getting push notification token
    final _ = await _pushNotificationsProvider.isNotificationsGranted;
    if (await _authProvider.auth.hasCachedAccountInformation) {
      await onLogin();
    } else {
      emit(NotLoggedInState());
    }
  }

  Future onLogin() async {
    try {
      await _oauthTryLoginUseCase.run();
      emit(LoggedInState());
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);
      emit(LoginFailed(e.toString()));
    }
  }
}
