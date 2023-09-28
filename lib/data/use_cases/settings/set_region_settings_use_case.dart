// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/local/shared_preferences/settings_data_source.dart';
import 'package:terralinkapp/domain/models/app_user_region.dart';

abstract class SetRegionSettingsUseCase {
  Future<void> run(AppUserRegion region);
}

@LazySingleton(
  as: SetRegionSettingsUseCase,
  env: [
    Environment.dev,
    Environment.prod,
  ],
)
class SetRegionSettingsUseCaseImpl extends SetRegionSettingsUseCase {
  final SettingsDataSource _settingsRepository;

  SetRegionSettingsUseCaseImpl(this._settingsRepository);

  @override
  Future<void> run(AppUserRegion region) async {
    await _settingsRepository.setString(SettingsRepositoryKeys.userRegion, region.name);
  }
}
