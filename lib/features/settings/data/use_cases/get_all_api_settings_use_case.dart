// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/api_settings/data/entities/api_settings.dart';
import 'package:terralinkapp/features/api_settings/data/providers/api_settings_provider.dart';

@injectable
class GetAllApiSettingsUseCase {
  final ApiSettingsProvider _apiSettingsProvider;

  GetAllApiSettingsUseCase(this._apiSettingsProvider);

  ApiSettings run() {
    final newsApiBaseUrl = _apiSettingsProvider.getNewsApiBaseUrl();
    final tasksSummaryApiBaseUrl = _apiSettingsProvider.getTasksSummaryApiBaseUrl();
    final tasksSbsApiBaseUrl = _apiSettingsProvider.getTasksSbsApiBaseUrl();
    final wsUrl = _apiSettingsProvider.getWsUrl();
    final msalTenantId = _apiSettingsProvider.getMsalTenantId();
    final msalClientId = _apiSettingsProvider.getMsalClientId();
    final msalScope = _apiSettingsProvider.getMsalScope();

    return ApiSettings(
      newsApiBaseUrl: newsApiBaseUrl,
      tasksSummaryApiBaseUrl: tasksSummaryApiBaseUrl,
      tasksSbsApiBaseUrl: tasksSbsApiBaseUrl,
      wsUrl: wsUrl,
      msalClientId: msalClientId,
      msalScope: msalScope,
      msalTenantId: msalTenantId,
    );
  }
}
