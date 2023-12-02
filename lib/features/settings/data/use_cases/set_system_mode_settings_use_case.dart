// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/settings/data/data_sources/settings_data_source.dart';

abstract class SetSystemModeSettingsUseCase {
  Future<void> run(bool isSystemModeEnabled);
}

@LazySingleton(
  as: SetSystemModeSettingsUseCase,
  env: [Environment.dev, Environment.prod],
)
class SetSystemModeSettingsUseCaseImpl extends SetSystemModeSettingsUseCase {
  final SettingsDataSource _settingsRepository;

  SetSystemModeSettingsUseCaseImpl(this._settingsRepository);

  @override
  Future<void> run(bool isSystemModeEnabled) async {
    await _settingsRepository.setBool(
      SettingsRepositoryKeys.systemMode,
      isSystemModeEnabled,
    );
  }
}
