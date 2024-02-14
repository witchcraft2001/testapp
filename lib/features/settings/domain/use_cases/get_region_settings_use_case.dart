// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/region/domain/models/app_user_region.dart';
import 'package:terralinkapp/features/settings/data/data_sources/settings_data_source.dart';

abstract class GetRegionSettingsUseCase implements AsyncParamlessUseCase<AppUserRegion?> {}

@LazySingleton(
  as: GetRegionSettingsUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetRegionSettingsUseCaseImpl extends GetRegionSettingsUseCase {
  final SettingsDataSource _settingsRepository;

  GetRegionSettingsUseCaseImpl(this._settingsRepository);

  @override
  Future<AppUserRegion?> call([UseCaseParams params = const NoParams()]) async {
    final userRegion = await _settingsRepository.getString(
      SettingsRepositoryKeys.userRegion,
    );

    if (userRegion != null) {
      return appUserRegions.firstWhere((element) => element.name == userRegion);
    }

    return null;
  }
}
