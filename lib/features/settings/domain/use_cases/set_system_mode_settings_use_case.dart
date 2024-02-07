// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/settings/data/data_sources/settings_data_source.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/params/bool_use_case_params.dart';

abstract class SetSystemModeSettingsUseCase
    implements AsyncParamfullUseCase<void, SystemModeStatusUseCaseParams> {}

@LazySingleton(
  as: SetSystemModeSettingsUseCase,
  env: [Environment.dev, Environment.prod],
)
class SetSystemModeSettingsUseCaseImpl extends SetSystemModeSettingsUseCase {
  final SettingsDataSource _settingsRepository;

  SetSystemModeSettingsUseCaseImpl(this._settingsRepository);

  @override
  Future<void> call(SystemModeStatusUseCaseParams params) async {
    await _settingsRepository.setBool(
      SettingsRepositoryKeys.systemMode,
      params.value,
    );
  }
}
