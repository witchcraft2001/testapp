// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/repositories/local/settings_repository.dart';

abstract class SetSystemModeSettingsUseCase {
  Future run(bool isSystemModeEnabled);
}

@LazySingleton(as: SetSystemModeSettingsUseCase, env: [Environment.dev, Environment.prod])
class SetSystemModeSettingsUseCaseImpl extends SetSystemModeSettingsUseCase {
  final SettingsRepository _settingsRepository;

  SetSystemModeSettingsUseCaseImpl(this._settingsRepository);

  @override
  Future run(bool isSystemModeEnabled) async {
    await _settingsRepository.setBool(
      SettingsRepositoryKeys.systemMode,
      isSystemModeEnabled,
    );
  }
}
