// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/settings/data/data_sources/settings_data_source.dart';

abstract class GetDarkModeSettingsUseCase {
  Future<bool?> run();
}

@LazySingleton(
  as: GetDarkModeSettingsUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetDarkModeSettingsUseCaseImpl extends GetDarkModeSettingsUseCase {
  final SettingsDataSource _settingsRepository;

  GetDarkModeSettingsUseCaseImpl(this._settingsRepository);

  @override
  Future<bool?> run() async {
    return await _settingsRepository.getBool(
      SettingsRepositoryKeys.darkMode,
    );
  }
}
