// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/core/notifications/providers/push_notifications_provider.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/features/auth/domain/auth_state.dart';
import 'package:terralinkapp/features/auth/domain/use_cases/get_background_data_use_case.dart';
import 'package:terralinkapp/features/auth/domain/use_cases/has_cached_account_use_case.dart';
import 'package:terralinkapp/features/auth/domain/use_cases/oauth_try_login_use_case.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_region_settings_use_case.dart';

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

  Future init() async {
    emit(LoadingState());

    // Getting push notification token
    final _ = await _pushNotificationsProvider.isNotificationsGranted;

    if (await _hasCachedAccountUseCase()) {
      await login();
    } else {
      emit(NotLoggedInState());
    }
  }

  Future login() async {
    try {
      emit(LoadingState());

      await _oauthTryLoginUseCase();
      final region = await _getRegionSettingsUseCase();

      emit(LoggedInState(region));

      await _getBackgroundDataUseCase();
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      final type = e is TlException ? e.type : TlExceptionType.other;
      final message = exceptionTranslations[type] ?? '';
      emit(LoginFailed(message, type));
    }
  }
}
