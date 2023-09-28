// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/local/shared_preferences/settings_data_source.dart';

abstract class GetSystemModeSettingsUseCase {
  Future<bool?> run();
}

@LazySingleton(as: GetSystemModeSettingsUseCase, env: [Environment.dev, Environment.prod])
class GetSystemModeSettingsUseCaseImpl extends GetSystemModeSettingsUseCase {
  final SettingsDataSource _settingsRepository;

  GetSystemModeSettingsUseCaseImpl(this._settingsRepository);

  @override
  Future<bool?> run() async {
    return await _settingsRepository.getBool(
      SettingsRepositoryKeys.systemMode,
    );
  }
}
