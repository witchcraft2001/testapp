// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/api_settings/domain/entities/api_settings_preset.dart';

part 'api_settings_edit_data.freezed.dart';

@freezed
class ApiSettingsEditData with _$ApiSettingsEditData {
  const factory ApiSettingsEditData({
    @Default('') String adminPanelApiBaseUrl,
    @Default('') String tasksSummaryApiBaseUrl,
    @Default('') String tasksSbsApiBaseUrl,
    @Default('') String wsUrl,
    @Default('') String msalTenantId,
    @Default('') String msalClientId,
    @Default('') String msalScope,
    @Default([]) List<ApiSettingsPreset> presets,
  }) = _ApiSettingsEditData;
}
