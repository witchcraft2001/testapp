// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/api_settings/presentation/cubits/api_settings_edit_data.dart';

part 'api_settings_state.freezed.dart';

@freezed
class ApiSettingsState with _$ApiSettingsState {
  const factory ApiSettingsState.init() = _Init;
  const factory ApiSettingsState.ready() = _Ready;
  const factory ApiSettingsState.edit(ApiSettingsEditData data) = _Edit;
}
