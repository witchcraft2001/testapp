// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/api_settings/data/entities/api_settings_preset.dart';

part 'api_settings_state.freezed.dart';

@freezed
class ApiSettingsState with _$ApiSettingsState {
  const factory ApiSettingsState({
    @Default('') String adminPanelApiBaseUrl,
    @Default('') String tasksSummaryApiBaseUrl,
    @Default('') String tasksSbsApiBaseUrl,
    @Default('') String wsUrl,
    @Default('') String msalTenantId,
    @Default('') String msalClientId,
    @Default('') String msalScope,
    @Default([]) List<ApiSettingsPreset> presets,
  }) = _ApiSettingsState;
}
