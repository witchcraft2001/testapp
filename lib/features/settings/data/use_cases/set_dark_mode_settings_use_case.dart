// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/settings/data/data_sources/settings_data_source.dart';

abstract class SetDarkModeSettingsUseCase {
  Future<void> run(bool isDarkModeEnabled);
}

@LazySingleton(
  as: SetDarkModeSettingsUseCase,
  env: [Environment.dev, Environment.prod],
)
class SetDarkModeSettingsUseCaseImpl extends SetDarkModeSettingsUseCase {
  final SettingsDataSource _settingsRepository;

  SetDarkModeSettingsUseCaseImpl(this._settingsRepository);

  @override
  Future<void> run(bool isDarkModeEnabled) async {
    await _settingsRepository.setBool(
      SettingsRepositoryKeys.darkMode,
      isDarkModeEnabled,
    );
  }
}
