// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_settings_state.freezed.dart';

@freezed
class ApiSettingsState with _$ApiSettingsState {
  const factory ApiSettingsState({
    @Default('') String newsApiBaseUrl,
    @Default('') String tasksApiBaseUrl,
    @Default('') String wsUrl,
    @Default('') String msalTenantId,
    @Default('') String msalClientId,
    @Default('') String msalScope,
  }) = _ApiSettingsState;
}
