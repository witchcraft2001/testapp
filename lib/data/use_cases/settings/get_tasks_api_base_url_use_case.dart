// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/providers/api_settings_provider.dart';

@injectable
class GetTasksApiBaseUrlUseCase {
  final ApiSettingsProvider _apiSettingsProvider;

  GetTasksApiBaseUrlUseCase(this._apiSettingsProvider);

  String run() => _apiSettingsProvider.getTasksApiBaseUrl();
}
