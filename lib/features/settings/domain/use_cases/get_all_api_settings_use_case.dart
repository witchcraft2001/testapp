// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/api_settings/data/entities/api_settings.dart';
import 'package:terralinkapp/features/api_settings/data/providers/api_settings_provider.dart';

@injectable
class GetAllApiSettingsUseCase implements ParamlessUseCase<ApiSettings> {
  final ApiSettingsProvider _apiSettingsProvider;

  GetAllApiSettingsUseCase(this._apiSettingsProvider);

  @override
  ApiSettings call([UseCaseParams params = const NoParams()]) {
    final adminPanelApiBaseUrl = _apiSettingsProvider.getAdminPanelApiBaseUrl();
    final tasksSummaryApiBaseUrl = _apiSettingsProvider.getTasksSummaryApiBaseUrl();
    final tasksSbsApiBaseUrl = _apiSettingsProvider.getTasksSbsApiBaseUrl();
    final wsUrl = _apiSettingsProvider.getWsUrl();
    final msalTenantId = _apiSettingsProvider.getMsalTenantId();
    final msalClientId = _apiSettingsProvider.getMsalClientId();
    final msalScope = _apiSettingsProvider.getMsalScope();

    return ApiSettings(
      adminPanelApiBaseUrl: adminPanelApiBaseUrl,
      tasksSummaryApiBaseUrl: tasksSummaryApiBaseUrl,
      tasksSbsApiBaseUrl: tasksSbsApiBaseUrl,
      wsUrl: wsUrl,
      msalClientId: msalClientId,
      msalScope: msalScope,
      msalTenantId: msalTenantId,
    );
  }
}
