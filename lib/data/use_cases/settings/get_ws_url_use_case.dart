// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/providers/api_settings_provider.dart';

@injectable
class GetWsUrlUseCase {
  final ApiSettingsProvider _apiSettingsProvider;

  GetWsUrlUseCase(this._apiSettingsProvider);

  String run() => _apiSettingsProvider.getWsUrl();
}
