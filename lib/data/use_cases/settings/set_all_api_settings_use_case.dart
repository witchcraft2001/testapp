// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/models/app/api_settings.dart';
import 'package:terralinkapp/data/providers/api_settings_provider.dart';

@injectable
class SetAllApiSettingsUseCase {
  final ApiSettingsProvider _apiSettingsProvider;

  SetAllApiSettingsUseCase(this._apiSettingsProvider);

  Future<void> run(ApiSettings settings) async {
    await _apiSettingsProvider.setNewsApiBaseUrl(settings.newsApiBaseUrl);
    await _apiSettingsProvider.setTasksSummaryApiBaseUrl(settings.tasksSummaryApiBaseUrl);
    await _apiSettingsProvider.setTasksSbsApiBaseUrl(settings.tasksSbsApiBaseUrl);
    await _apiSettingsProvider.setWsUrl(settings.wsUrl);
    await _apiSettingsProvider.setMsalTenantId(settings.msalTenantId);
    await _apiSettingsProvider.setMsalClientId(settings.msalClientId);
    await _apiSettingsProvider.setMsalScope(settings.msalScope);
  }
}
