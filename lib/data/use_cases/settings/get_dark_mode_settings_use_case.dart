// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/repositories/local/settings_repository.dart';

abstract class GetDarkModeSettingsUseCase {
  Future<bool?> run();
}

@LazySingleton(as: GetDarkModeSettingsUseCase, env: [Environment.dev, Environment.prod])
class GetDarkModeSettingsUseCaseImpl extends GetDarkModeSettingsUseCase {
  final SettingsRepository _settingsRepository;

  GetDarkModeSettingsUseCaseImpl(this._settingsRepository);

  @override
  Future<bool?> run() async {
    return await _settingsRepository.getBool(
      SettingsRepositoryKeys.darkMode,
    );
  }
}
