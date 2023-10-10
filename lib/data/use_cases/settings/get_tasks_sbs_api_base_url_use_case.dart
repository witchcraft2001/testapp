// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/providers/api_settings_provider.dart';

@injectable
class GetTasksSBSApiBaseUrlUseCase {
  final ApiSettingsProvider _apiSettingsProvider;

  GetTasksSBSApiBaseUrlUseCase(this._apiSettingsProvider);

  String run() => _apiSettingsProvider.getTasksSBSApiBaseUrl();
}
