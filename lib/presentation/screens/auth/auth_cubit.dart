// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/providers/auth_provider.dart';
import 'package:terralinkapp/data/providers/push_notifications_provider.dart';
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/data/use_cases/auth/oauth_try_login_use_case.dart';
import 'package:terralinkapp/data/use_cases/settings/get_region_settings_use_case.dart';
import 'package:terralinkapp/presentation/screens/auth/auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final PushNotificationsProvider _pushNotificationsProvider;
  final AuthProvider _authProvider;
  final OAuthTryLoginUseCase _oauthTryLoginUseCase;
  final LogService _logService;
  final GetRegionSettingsUseCase _getRegionSettingsUseCase;

  AuthCubit(
    this._pushNotificationsProvider,
    this._authProvider,
    this._oauthTryLoginUseCase,
    this._logService,
    this._getRegionSettingsUseCase,
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
      emit(LoadingState());

      await _oauthTryLoginUseCase.run();
      final region = await _getRegionSettingsUseCase.run();

      emit(LoggedInState(region));
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);
      emit(LoginFailed(e.toString()));
    }
  }
}
