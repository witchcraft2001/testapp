// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/presentation/screens/settings/domain/states/settings_state.dart';

part 'settings_screen_state.freezed.dart';

@freezed
class SettingsScreenState with _$SettingsScreenState {
  const factory SettingsScreenState.loading() = SettingsScreenStateLoading;

  const factory SettingsScreenState.loaded(SettingsState data) = SettingsScreenStateShow;
}
