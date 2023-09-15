// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/use_cases/auth/user_log_out_use_case.dart';
import 'package:terralinkapp/data/use_cases/settings/get_billing_notification_settings_use_case.dart';
import 'package:terralinkapp/data/use_cases/settings/get_dark_mode_settings_use_case.dart';
import 'package:terralinkapp/data/use_cases/settings/get_system_mode_settings_use_case.dart';
import 'package:terralinkapp/data/use_cases/settings/set_billing_notification_settings_use_case.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/screens/settings/domain/states/settings_screen_state.dart';
import 'package:terralinkapp/presentation/screens/settings/domain/states/settings_state.dart';
import 'package:terralinkapp/presentation/theme/domain/cubits/theme_cubit.dart';

@injectable
class SettingsCubit extends Cubit<SettingsScreenState> {
  final GetBillingNotificationSettingsUseCase _getBillingNotificationSettingsUseCase;
  final GetDarkModeSettingsUseCase _getDarkModeSettingsUseCase;
  final GetSystemModeSettingsUseCase _getSystemModeSettingsUseCase;
  final ThemeCubit _themeCubit;

  late StreamSubscription _themeSubscription;

  SettingsState _settings = const SettingsState();

  SettingsCubit(
    this._getBillingNotificationSettingsUseCase,
    this._getDarkModeSettingsUseCase,
    this._getSystemModeSettingsUseCase,
    this._themeCubit,
  ) : super(const SettingsScreenState.loading()) {
    _themeSubscription = _themeCubit.stream.listen((state) {
      state.whenOrNull(ready: (data) {
        emit(SettingsScreenState.loaded(_settings.copyWith(
          isDarkTheme: data.isDark,
          isSystemTheme: data.isSystem,
        )));
      });
    });
  }

  Future<void> init() async {
    emit(const SettingsScreenState.loading());

    final isDarkTheme = await _getDarkModeSettingsUseCase.run();
    final isSystemTheme = await _getSystemModeSettingsUseCase.run();
    final isBillingNotification = await _getBillingNotificationSettingsUseCase.run();

    _settings = _settings.copyWith(
      isDarkTheme: isDarkTheme ?? _settings.isDarkTheme,
      isSystemTheme: isSystemTheme ?? _settings.isSystemTheme,
      isBillingNotification: isBillingNotification ?? _settings.isBillingNotification,
    );

    emit(SettingsScreenState.loaded(_settings));
  }

  Future<void> billing(bool isBilling) async {
    await getIt<SetBillingNotificationSettingsUseCase>().run(isBilling);

    _settings = _settings.copyWith(
      isBillingNotification: isBilling,
    );

    emit(SettingsScreenState.loaded(_settings));
  }

  Future logout() async {
    await getIt<UserLogOutUseCase>().run();
  }

  @override
  Future<void> close() async {
    _themeSubscription.cancel();
    super.close();
  }
}
