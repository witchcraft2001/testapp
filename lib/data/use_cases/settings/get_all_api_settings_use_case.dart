// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/models/app/api_settings.dart';
import 'package:terralinkapp/data/providers/api_settings_provider.dart';

@injectable
class GetAllApiSettingsUseCase {
  final ApiSettingsProvider _apiSettingsProvider;

  GetAllApiSettingsUseCase(this._apiSettingsProvider);

  ApiSettings run() {
    final newsApiBaseUrl = _apiSettingsProvider.getNewsApiBaseUrl();
    final tasksApiBaseUrl = _apiSettingsProvider.getTasksRfPApiBaseUrl();
    final wsUrl = _apiSettingsProvider.getWsUrl();
    final msalTenantId = _apiSettingsProvider.getMsalTenantId();
    final msalClientId = _apiSettingsProvider.getMsalClientId();
    final msalScope = _apiSettingsProvider.getMsalScope();

    return ApiSettings(
      newsApiBaseUrl: newsApiBaseUrl,
      tasksApiBaseUrl: tasksApiBaseUrl,
      wsUrl: wsUrl,
      msalClientId: msalClientId,
      msalScope: msalScope,
      msalTenantId: msalTenantId,
    );
  }
}
