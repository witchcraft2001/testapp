// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/repositories/local/settings_repository.dart';

abstract class SetDarkModeSettingsUseCase {
  Future run(bool isDarkModeEnabled);
}

@LazySingleton(as: SetDarkModeSettingsUseCase, env: [Environment.dev, Environment.prod])
class SetDarkModeSettingsUseCaseImpl extends SetDarkModeSettingsUseCase {
  final SettingsRepository _settingsRepository;

  SetDarkModeSettingsUseCaseImpl(this._settingsRepository);

  @override
  Future run(bool isDarkModeEnabled) async {
    await _settingsRepository.setBool(
      SettingsRepositoryKeys.darkMode,
      isDarkModeEnabled,
    );
  }
}
