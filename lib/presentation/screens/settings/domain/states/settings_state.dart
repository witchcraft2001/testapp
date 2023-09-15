// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(false) bool isDarkTheme,
    @Default(false) bool isSystemTheme,
    @Default(false) bool isBillingNotification,
  }) = _SettingsState;
}
