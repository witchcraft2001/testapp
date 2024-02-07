// Package imports:
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/api_settings/data/entities/api_settings.dart';
import 'package:terralinkapp/features/api_settings/data/entities/api_settings_preset.dart';
import 'package:terralinkapp/features/api_settings/domain/states/api_settings_screen_state.dart';
import 'package:terralinkapp/features/api_settings/domain/states/api_settings_state.dart';
import 'package:terralinkapp/features/auth/domain/use_cases/refresh_auth_settings_use_case.dart';
import 'package:terralinkapp/features/chat/domain/use_cases/chat/clear_chat_history_use_case.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_all_api_settings_use_case.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_api_settings_presets_use_case.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/params/api_settings_use_case_params.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/set_all_api_settings_use_case.dart';

@injectable
class ApiSettingsCubit extends Cubit<ApiSettingsScreenState> {
  final SetAllApiSettingsUseCase _setAllApiSettingsUseCase;
  final GetAllApiSettingsUseCase _getAllApiSettingsUseCase;
  final RefreshAuthSettingsUseCase _refreshAuthSettingsUseCase;
  final ClearChatHistoryUseCase _clearChatHistoryUseCase;
  final GetApiSettingsPresetsUseCase _getApiSettingsPresetsUseCase;

  ApiSettingsCubit(
    this._setAllApiSettingsUseCase,
    this._getAllApiSettingsUseCase,
    this._refreshAuthSettingsUseCase,
    this._clearChatHistoryUseCase,
    this._getApiSettingsPresetsUseCase,
  ) : super(const ApiSettingsScreenState.initial());

  Future<void> init() async {
    final settings = _getAllApiSettingsUseCase();
    final presets = await _getApiSettingsPresetsUseCase();

    emit(Edit(ApiSettingsState(
      adminPanelApiBaseUrl: settings.adminPanelApiBaseUrl,
      tasksSummaryApiBaseUrl: settings.tasksSummaryApiBaseUrl,
      tasksSbsApiBaseUrl: settings.tasksSbsApiBaseUrl,
      wsUrl: settings.wsUrl,
      msalTenantId: settings.msalTenantId,
      msalScope: settings.msalScope,
      msalClientId: settings.msalClientId,
      presets: presets,
    )));
  }

  Future<void> onAdminPanelApiBaseUrlChanged(String value) async {
    emit(Edit(_getViewState().copyWith(adminPanelApiBaseUrl: value)));
  }

  Future<void> onTasksSummaryApiBaseUrlChanged(String value) async {
    emit(Edit(_getViewState().copyWith(tasksSummaryApiBaseUrl: value)));
  }

  Future<void> onTasksSbsApiBaseUrlChanged(String value) async {
    emit(Edit(_getViewState().copyWith(tasksSbsApiBaseUrl: value)));
  }

  Future<void> onWsUrlChanged(String value) async {
    emit(Edit(_getViewState().copyWith(wsUrl: value)));
  }

  Future<void> onMsalClientIdChanged(String value) async {
    emit(Edit(_getViewState().copyWith(msalClientId: value)));
  }

  Future<void> onMsalScopeChanged(String value) async {
    emit(Edit(_getViewState().copyWith(msalScope: value)));
  }

  Future<void> onMsalTenantIdChanged(String value) async {
    emit(Edit(_getViewState().copyWith(msalTenantId: value)));
  }

  Future<void> onSavePressed() async {
    final values = _getViewState();
    final oldValues = _getAllApiSettingsUseCase();

    if (oldValues.wsUrl != values.wsUrl) {
      await _clearChatHistoryUseCase();
    }

    await _setAllApiSettingsUseCase(
      ApiSettingsUseCaseParams(
        ApiSettings(
          adminPanelApiBaseUrl: values.adminPanelApiBaseUrl,
          tasksSummaryApiBaseUrl: values.tasksSummaryApiBaseUrl,
          tasksSbsApiBaseUrl: values.tasksSbsApiBaseUrl,
          wsUrl: values.wsUrl,
          msalTenantId: values.msalTenantId,
          msalClientId: values.msalClientId,
          msalScope: values.msalScope,
        ),
      ),
    );

    _refreshAuthSettingsUseCase();
    emit(const Success());
  }

  Future<void> onPresetSelected(ApiSettingsPreset preset) async {
    emit(Edit(_getViewState().copyWith(
      adminPanelApiBaseUrl: preset.adminPanelApiBaseUrl,
      tasksSummaryApiBaseUrl: preset.tasksSummaryApiBaseUrl,
      tasksSbsApiBaseUrl: preset.tasksSbsApiBaseUrl,
      wsUrl: preset.wsUrl,
      msalTenantId: preset.msalTenantId,
      msalClientId: preset.msalClientId,
      msalScope: preset.msalScope,
    )));
  }

  ApiSettingsState _getViewState() {
    return (state is Edit) ? (state as Edit).data : const ApiSettingsState();
  }
}
