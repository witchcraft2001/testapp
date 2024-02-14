// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/settings/data/data_sources/settings_data_source.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/params/bool_use_case_params.dart';

abstract class SetDarkModeSettingsUseCase
    implements AsyncParamfullUseCase<void, DarkModeStatusUseCaseParams> {}

@LazySingleton(
  as: SetDarkModeSettingsUseCase,
  env: [Environment.dev, Environment.prod],
)
class SetDarkModeSettingsUseCaseImpl extends SetDarkModeSettingsUseCase {
  final SettingsDataSource _settingsRepository;

  SetDarkModeSettingsUseCaseImpl(this._settingsRepository);

  @override
  Future<void> call(DarkModeStatusUseCaseParams params) async {
    await _settingsRepository.setBool(
      SettingsRepositoryKeys.darkMode,
      params.value,
    );
  }
}
