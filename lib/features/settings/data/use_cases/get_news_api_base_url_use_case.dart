// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/api_settings/data/providers/api_settings_provider.dart';

@injectable
class GetNewsApiBaseUrlUseCase {
  final ApiSettingsProvider _apiSettingsProvider;

  GetNewsApiBaseUrlUseCase(this._apiSettingsProvider);

  String run() => _apiSettingsProvider.getNewsApiBaseUrl();
}
