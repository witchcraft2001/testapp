// Package imports:
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/models/app/api_settings.dart';
import 'package:terralinkapp/data/use_cases/auth/refresh_auth_settings_use_case.dart';
import 'package:terralinkapp/data/use_cases/chat/clear_chat_history_use_case.dart';
import 'package:terralinkapp/data/use_cases/settings/get_all_api_settings_use_case.dart';
import 'package:terralinkapp/data/use_cases/settings/set_all_api_settings_use_case.dart';
import 'package:terralinkapp/presentation/screens/api_settings/domain/states/api_settings_screen_state.dart';
import 'package:terralinkapp/presentation/screens/api_settings/domain/states/api_settings_state.dart';

@injectable
class ApiSettingsCubit extends Cubit<ApiSettingsScreenState> {
  final SetAllApiSettingsUseCase _setAllApiSettingsUseCase;
  final GetAllApiSettingsUseCase _getAllApiSettingsUseCase;
  final RefreshAuthSettingsUseCase _refreshAuthSettingsUseCase;
  final ClearChatHistoryUseCase _clearChatHistoryUseCase;

  ApiSettingsCubit(
    this._setAllApiSettingsUseCase,
    this._getAllApiSettingsUseCase,
    this._refreshAuthSettingsUseCase,
    this._clearChatHistoryUseCase,
  ) : super(const ApiSettingsScreenState.initial());

  Future<void> init() async {
    final settings = _getAllApiSettingsUseCase.run();

    emit(Edit(ApiSettingsState(
      newsApiBaseUrl: settings.newsApiBaseUrl,
      tasksApiBaseUrl: settings.tasksApiBaseUrl,
      wsUrl: settings.wsUrl,
      msalTenantId: settings.msalTenantId,
      msalScope: settings.msalScope,
      msalClientId: settings.msalClientId,
    )));
  }

  Future<void> onNewsApiBaseUrlChanged(String value) async {
    emit(Edit(_getViewState().copyWith(newsApiBaseUrl: value)));
  }

  Future<void> onTasksApiBaseUrlChanged(String value) async {
    emit(Edit(_getViewState().copyWith(tasksApiBaseUrl: value)));
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
    final oldValues = _getAllApiSettingsUseCase.run();

    if (oldValues.wsUrl != values.wsUrl) {
      await _clearChatHistoryUseCase.run();
    }

    await _setAllApiSettingsUseCase.run(ApiSettings(
      newsApiBaseUrl: values.newsApiBaseUrl,
      tasksApiBaseUrl: values.tasksApiBaseUrl,
      wsUrl: values.wsUrl,
      msalTenantId: values.msalTenantId,
      msalClientId: values.msalClientId,
      msalScope: values.msalScope,
    ));

    _refreshAuthSettingsUseCase.run();
    emit(const Success());
  }

  ApiSettingsState _getViewState() {
    return (state is Edit) ? (state as Edit).data : const ApiSettingsState();
  }
}
