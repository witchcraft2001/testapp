// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/core/common/tl_chars.dart';
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/core/navigation/app_navigation_keys.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/notifications/providers/push_notifications_provider.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/features/about/domain/use_cases/get_app_info_use_case.dart';
import 'package:terralinkapp/features/auth/domain/use_cases/get_background_data_use_case.dart';
import 'package:terralinkapp/features/auth/domain/use_cases/has_cached_account_use_case.dart';
import 'package:terralinkapp/features/auth/domain/use_cases/oauth_try_login_use_case.dart';
import 'package:terralinkapp/features/auth/presentation/cubits/auth_state.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_region_settings_use_case.dart';
import 'package:terralinkapp/features/system_settings/domain/use_cases/get_system_settings_use_case.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final PushNotificationsProvider _pushNotificationsProvider;
  final HasCachedAccountUseCase _hasCachedAccountUseCase;
  final OAuthTryLoginUseCase _oauthTryLoginUseCase;
  final LogService _logService;
  final GetAppInfoUseCase _getAppInfoUseCase;
  final GetSystemSettingsUseCase _getSystemSettingsUseCase;
  final GetRegionSettingsUseCase _getRegionSettingsUseCase;
  final GetBackgroundDataUseCase _getBackgroundDataUseCase;

  AuthCubit(
    this._pushNotificationsProvider,
    this._hasCachedAccountUseCase,
    this._oauthTryLoginUseCase,
    this._logService,
    this._getAppInfoUseCase,
    this._getSystemSettingsUseCase,
    this._getRegionSettingsUseCase,
    this._getBackgroundDataUseCase,
  ) : super(LoadingState());

  Future init() async {
    emit(LoadingState());

    // Получение токена для push-уведомлений
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

      final updateType = await _getUpdateType();
      final region = await _getRegionSettingsUseCase();

      emit(LoggedInState(
        updateType: updateType,
        userRegion: region,
      ));
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      final type = e is TlException ? e.type : TlExceptionType.other;
      final message = exceptionTranslations[type] ?? '';
      emit(LoginFailed(message, type));
    }
  }

  void redirect(BuildContext context) {
    if (state is LoggedInState) {
      final loggedState = state as LoggedInState;

      if (loggedState.updateType != null) {
        return appNavigationService.goNamed(
          context,
          AppRoutes.update.name,
          extra: {AppNavigationKeys.updateType: loggedState.updateType},
        );
      }

      _getBackgroundDataUseCase();

      if (loggedState.userRegion == null) {
        return appNavigationService.goNamed(context, AppRoutes.region.name);
      }

      appNavigationService.goNamed(context, AppRoutes.news.name);
    }
  }

  Future<UpdateType?> _getUpdateType() async {
    final settings = await _getSystemSettingsUseCase();

    if (settings.appVersion != null) {
      final appInfo = await _getAppInfoUseCase();

      final fromApp = _parseVersion(appInfo.version);
      final fromApi = _parseVersion(settings.appVersion!);

      if (fromApi.length == 3 && fromApp.length == 3) {
        final major = _checkPart(fromApi[0], fromApp[0]);
        final minor = _checkPart(fromApi[1], fromApp[1]);
        final patch = _checkPart(fromApi[2], fromApp[2]);

        if (!major && !minor && patch) return UpdateType.optional;
        if (major || minor) return UpdateType.required;
      }
    }

    return null;
  }

  List<int?> _parseVersion(String version) =>
      version.split(TlChars.dot).map((e) => int.tryParse(e)).toList();

  bool _checkPart(int? api, int? app) {
    return api != null && app != null && app < api;
  }
}
