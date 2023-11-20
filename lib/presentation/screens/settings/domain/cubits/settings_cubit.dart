// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/use_cases/auth/user_log_out_use_case.dart';
import 'package:terralinkapp/data/use_cases/settings/get_billing_notification_settings_use_case.dart';
import 'package:terralinkapp/data/use_cases/settings/get_dark_mode_settings_use_case.dart';
import 'package:terralinkapp/data/use_cases/settings/get_region_settings_use_case.dart';
import 'package:terralinkapp/data/use_cases/settings/get_system_mode_settings_use_case.dart';
import 'package:terralinkapp/data/use_cases/settings/set_billing_notification_settings_use_case.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/screens/region/domain/cubits/region_cubit.dart';
import 'package:terralinkapp/presentation/screens/settings/domain/states/settings_cubit_state.dart';
import 'package:terralinkapp/presentation/theme/domain/cubits/theme_cubit.dart';

@injectable
class SettingsCubit extends Cubit<SettingsCubitState> {
  final GetBillingNotificationSettingsUseCase _getBillingNotificationSettingsUseCase;
  final GetDarkModeSettingsUseCase _getDarkModeSettingsUseCase;
  final GetSystemModeSettingsUseCase _getSystemModeSettingsUseCase;
  final GetRegionSettingsUseCase _getRegionSettingsUseCase;
  final UserLogOutUseCase _userLogOutUseCase;

  final ThemeCubit _themeCubit;
  final RegionCubit _regionCubit;

  late StreamSubscription _themeSubscription;
  late StreamSubscription _regionSubscription;

  SettingsState _current = const SettingsState();

  SettingsCubit(
    this._getBillingNotificationSettingsUseCase,
    this._getDarkModeSettingsUseCase,
    this._getSystemModeSettingsUseCase,
    this._getRegionSettingsUseCase,
    this._userLogOutUseCase,
    this._themeCubit,
    this._regionCubit,
  ) : super(const SettingsCubitState.loading()) {
    

    _themeSubscription = _themeCubit.stream.listen((state) {
      state.whenOrNull(ready: (data) {
        emit(SettingsCubitState.ready(_current.copyWith(
          isDarkTheme: data.isDark,
          isSystemTheme: data.isSystem,
        )));
      });
    });

    _regionSubscription = _regionCubit.stream.listen((state) {
      state.whenOrNull(ready: (data) {
        emit(SettingsCubitState.ready(_current.copyWith(
          userRegion: data.region,
        )));
      });
    });
  }

  Future<void> init() async {
    emit(const SettingsCubitState.loading());

    final isDarkTheme = await _getDarkModeSettingsUseCase.run();
    final isSystemTheme = await _getSystemModeSettingsUseCase.run();
    final isBillingNotification = await _getBillingNotificationSettingsUseCase.run();
    final userRegion = await _getRegionSettingsUseCase.run();

    _current = _current.copyWith(
      isDarkTheme: isDarkTheme ?? _current.isDarkTheme,
      isSystemTheme: isSystemTheme ?? _current.isSystemTheme,
      isBillingNotification: isBillingNotification ?? _current.isBillingNotification,
      userRegion: userRegion ?? _current.userRegion,
    );

    emit(SettingsCubitState.ready(_current));
  }

  Future<void> billing(bool isBilling) async {
    await getIt<SetBillingNotificationSettingsUseCase>().run(isBilling);

    _current = _current.copyWith(
      isBillingNotification: isBilling,
    );

    emit(SettingsCubitState.ready(_current));
  }

  Future logout() async => await _userLogOutUseCase.run();

  @override
  Future<void> close() async {
    _themeSubscription.cancel();
    _regionSubscription.cancel();
    super.close();
  }
}
