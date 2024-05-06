// Package imports:
import 'package:bloc/bloc.dart';

// Project imports:
import 'package:terralinkapp/features/api_settings/domain/entities/api_settings.dart';
import 'package:terralinkapp/features/api_settings/domain/entities/api_settings_preset.dart';
import 'package:terralinkapp/features/api_settings/presentation/cubits/api_settings_edit_data.dart';
import 'package:terralinkapp/features/api_settings/presentation/cubits/api_settings_state.dart';
import 'package:terralinkapp/features/auth/domain/use_cases/clear_data_admin_panel_use_case.dart';
import 'package:terralinkapp/features/auth/domain/use_cases/clear_data_internal_systems_use_case.dart';
import 'package:terralinkapp/features/auth/domain/use_cases/refresh_auth_settings_use_case.dart';
import 'package:terralinkapp/features/chats/data/repositories/chats_repository.dart';
import 'package:terralinkapp/features/likes/common/domain/use_cases/get_likes_stat_use_case.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_all_api_settings_use_case.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_api_settings_presets_use_case.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/params/api_settings_use_case_params.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/set_all_api_settings_use_case.dart';

class ApiSettingsCubit extends Cubit<ApiSettingsState> {
  final SetAllApiSettingsUseCase _setAllApiSettingsUseCase;
  final GetAllApiSettingsUseCase _getAllApiSettingsUseCase;
  final RefreshAuthSettingsUseCase _refreshAuthSettingsUseCase;
  final GetApiSettingsPresetsUseCase _getApiSettingsPresetsUseCase;
  final ChatsRepository _chatsRepository;
  final GetLikesStatUseCase _getLikesStatUseCase;
  final ClearDataAdminPanelUseCase? _clearDataAdminPanelUseCase;
  final ClearDataInternalSystemsUseCase? _clearDataInternalSystemsUseCase;

  ApiSettingsCubit(
    this._setAllApiSettingsUseCase,
    this._getAllApiSettingsUseCase,
    this._refreshAuthSettingsUseCase,
    this._getApiSettingsPresetsUseCase,
    this._chatsRepository,
    this._getLikesStatUseCase,
    this._clearDataAdminPanelUseCase,
    this._clearDataInternalSystemsUseCase,
  ) : super(const ApiSettingsState.init());

  Future<void> init() async {
    final settings = _getAllApiSettingsUseCase();
    final presets = await _getApiSettingsPresetsUseCase();

    emit(ApiSettingsState.edit(ApiSettingsEditData(
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

  Future<void> changeAdminPanelApiBaseUrl(String value) async {
    emit(ApiSettingsState.edit(_getEditState().copyWith(adminPanelApiBaseUrl: value)));
  }

  Future<void> changeTasksSummaryApiBaseUrl(String value) async {
    emit(ApiSettingsState.edit(_getEditState().copyWith(tasksSummaryApiBaseUrl: value)));
  }

  Future<void> changeTasksSbsApiBaseUrl(String value) async {
    emit(ApiSettingsState.edit(_getEditState().copyWith(tasksSbsApiBaseUrl: value)));
  }

  Future<void> changeWsUrl(String value) async {
    emit(ApiSettingsState.edit(_getEditState().copyWith(wsUrl: value)));
  }

  Future<void> changeMsalClientId(String value) async {
    emit(ApiSettingsState.edit(_getEditState().copyWith(msalClientId: value)));
  }

  Future<void> changeMsalScope(String value) async {
    emit(ApiSettingsState.edit(_getEditState().copyWith(msalScope: value)));
  }

  Future<void> changeMsalTenantId(String value) async {
    emit(ApiSettingsState.edit(_getEditState().copyWith(msalTenantId: value)));
  }

  Future<void> save() async {
    final values = _getEditState();
    final oldValues = _getAllApiSettingsUseCase();

    if (oldValues.wsUrl != values.wsUrl) {
      await _chatsRepository.clearHistory();
    }

    await _setSettings(values);

    _refreshAuthSettingsUseCase();
    emit(const ApiSettingsState.ready());
  }

  Future<void> saveWhenLogged() async {
    final values = _getEditState();
    final oldValues = _getAllApiSettingsUseCase();

    final isChangedChatUrl = oldValues.wsUrl != values.wsUrl;
    final isChangedAdminPanelUrl = oldValues.adminPanelApiBaseUrl != values.adminPanelApiBaseUrl;
    final isChangedSbsUrl = oldValues.tasksSbsApiBaseUrl != values.tasksSbsApiBaseUrl;
    final isChangedSummaryUrl = oldValues.tasksSummaryApiBaseUrl != values.tasksSummaryApiBaseUrl;

    if (isChangedChatUrl) await _chatsRepository.clearHistoryAndLogout();
    if (isChangedAdminPanelUrl) await _clearDataAdminPanelUseCase?.call();
    if (isChangedSbsUrl || isChangedSummaryUrl) _clearDataInternalSystemsUseCase?.call();

    await _setSettings(values);

    if (isChangedAdminPanelUrl) await _getLikesStatUseCase();
    if (isChangedChatUrl) await _chatsRepository.loginUser();

    emit(const ApiSettingsState.ready());
  }

  Future<void> selectPreset(ApiSettingsPreset preset) async {
    emit(ApiSettingsState.edit(_getEditState().copyWith(
      adminPanelApiBaseUrl: preset.adminPanelApiBaseUrl,
      tasksSummaryApiBaseUrl: preset.tasksSummaryApiBaseUrl,
      tasksSbsApiBaseUrl: preset.tasksSbsApiBaseUrl,
      wsUrl: preset.wsUrl,
      msalTenantId: preset.msalTenantId,
      msalClientId: preset.msalClientId,
      msalScope: preset.msalScope,
    )));
  }

  Future<void> _setSettings(ApiSettingsEditData values) async {
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
  }

  ApiSettingsEditData _getEditState() {
    return state.whenOrNull(edit: (data) => data) ?? const ApiSettingsEditData();
  }
}
