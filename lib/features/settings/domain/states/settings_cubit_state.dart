// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/region/domain/models/app_user_region.dart';

part 'settings_cubit_state.freezed.dart';

@freezed
class SettingsCubitState with _$SettingsCubitState {
  const factory SettingsCubitState.loading() = _SettingsCubitStateLoading;

  const factory SettingsCubitState.ready(SettingsState data) = _SettingsScreenStateReady;
}

class SettingsState {
  final bool isDarkTheme;
  final bool isSystemTheme;
  final bool isBillingNotification;
  final AppUserRegion? userRegion;

  const SettingsState({
    this.isDarkTheme = false,
    this.isSystemTheme = false,
    this.isBillingNotification = false,
    this.userRegion,
  });

  SettingsState copyWith({
    bool? isDarkTheme,
    bool? isSystemTheme,
    bool? isBillingNotification,
    AppUserRegion? userRegion,
  }) =>
      SettingsState(
        isDarkTheme: isDarkTheme ?? this.isDarkTheme,
        isSystemTheme: isSystemTheme ?? this.isSystemTheme,
        isBillingNotification: isBillingNotification ?? this.isBillingNotification,
        userRegion: userRegion ?? this.userRegion,
      );
}
