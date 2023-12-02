// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/region/domain/models/app_user_region.dart';
import 'package:terralinkapp/features/settings/data/data_sources/settings_data_source.dart';

abstract class GetRegionSettingsUseCase {
  Future<AppUserRegion?> run();
}

@LazySingleton(
  as: GetRegionSettingsUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetRegionSettingsUseCaseImpl extends GetRegionSettingsUseCase {
  final SettingsDataSource _settingsRepository;

  GetRegionSettingsUseCaseImpl(this._settingsRepository);

  @override
  Future<AppUserRegion?> run() async {
    final userRegion = await _settingsRepository.getString(
      SettingsRepositoryKeys.userRegion,
    );

    if (userRegion != null) {
      return appUserRegions.firstWhere((element) => element.name == userRegion);
    }

    return null;
  }
}
