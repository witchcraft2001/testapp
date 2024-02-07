// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/api_settings/data/providers/api_settings_provider.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/params/api_settings_use_case_params.dart';

@injectable
class SetAllApiSettingsUseCase implements AsyncParamfullUseCase<void, ApiSettingsUseCaseParams> {
  final ApiSettingsProvider _apiSettingsProvider;

  SetAllApiSettingsUseCase(this._apiSettingsProvider);

  @override
  Future<void> call(ApiSettingsUseCaseParams params) async {
    await _apiSettingsProvider.setAdminPanelApiBaseUrl(params.settings.adminPanelApiBaseUrl);
    await _apiSettingsProvider.setTasksSummaryApiBaseUrl(params.settings.tasksSummaryApiBaseUrl);
    await _apiSettingsProvider.setTasksSbsApiBaseUrl(params.settings.tasksSbsApiBaseUrl);
    await _apiSettingsProvider.setWsUrl(params.settings.wsUrl);
    await _apiSettingsProvider.setMsalTenantId(params.settings.msalTenantId);
    await _apiSettingsProvider.setMsalClientId(params.settings.msalClientId);
    await _apiSettingsProvider.setMsalScope(params.settings.msalScope);
  }
}
