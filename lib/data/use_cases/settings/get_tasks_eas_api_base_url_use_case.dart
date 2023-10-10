// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/providers/api_settings_provider.dart';

@injectable
class GetTasksEASApiBaseUrlUseCase {
  final ApiSettingsProvider _apiSettingsProvider;

  GetTasksEASApiBaseUrlUseCase(this._apiSettingsProvider);

  String run() => _apiSettingsProvider.getTasksEASApiBaseUrl();
}
