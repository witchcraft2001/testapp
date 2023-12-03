// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/notifications/providers/push_notifications_provider.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/features/auth/data/use_cases/get_background_data_use_case.dart';
import 'package:terralinkapp/features/auth/data/use_cases/has_cached_account_use_case.dart';
import 'package:terralinkapp/features/auth/data/use_cases/oauth_try_login_use_case.dart';
import 'package:terralinkapp/features/auth/domain/auth_state.dart';
import 'package:terralinkapp/features/settings/data/use_cases/get_region_settings_use_case.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final PushNotificationsProvider _pushNotificationsProvider;
  final HasCachedAccountUseCase _hasCachedAccountUseCase;
  final OAuthTryLoginUseCase _oauthTryLoginUseCase;
  final LogService _logService;
  final GetRegionSettingsUseCase _getRegionSettingsUseCase;
  final GetBackgroundDataUseCase _getBackgroundDataUseCase;

  AuthCubit(
    this._pushNotificationsProvider,
    this._hasCachedAccountUseCase,
    this._oauthTryLoginUseCase,
    this._logService,
    this._getRegionSettingsUseCase,
    this._getBackgroundDataUseCase,
  ) : super(LoadingState());

  Future onInit() async {
    emit(LoadingState());

    // Getting push notification token
    final _ = await _pushNotificationsProvider.isNotificationsGranted;

    if (await _hasCachedAccountUseCase.run()) {
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

      await _getBackgroundDataUseCase.run();
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);
      emit(LoginFailed(e.toString()));
    }
  }
}
