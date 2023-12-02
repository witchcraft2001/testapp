// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/api_settings/domain/states/api_settings_state.dart';

part 'api_settings_screen_state.freezed.dart';

@freezed
class ApiSettingsScreenState with _$ApiSettingsScreenState {
  const factory ApiSettingsScreenState.initial() = Initial;
  const factory ApiSettingsScreenState.success() = Success;
  const factory ApiSettingsScreenState.edit(ApiSettingsState data) = Edit;
}
