// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/settings/data/data_sources/settings_data_source.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/params/app_user_region_use_case_params.dart';

abstract class SetRegionSettingsUseCase
    implements AsyncParamfullUseCase<void, AppUserRegionUseCaseParams> {}

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
  Future<void> call(AppUserRegionUseCaseParams params) async {
    await _settingsRepository.setString(SettingsRepositoryKeys.userRegion, params.userRegion.name);
  }
}
