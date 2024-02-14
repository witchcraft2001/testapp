// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/settings/data/data_sources/settings_data_source.dart';

abstract class GetDarkModeSettingsUseCase implements AsyncParamlessUseCase<bool?> {}

@LazySingleton(
  as: GetDarkModeSettingsUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetDarkModeSettingsUseCaseImpl extends GetDarkModeSettingsUseCase {
  final SettingsDataSource _settingsRepository;

  GetDarkModeSettingsUseCaseImpl(this._settingsRepository);

  @override
  Future<bool?> call([UseCaseParams params = const NoParams()]) async {
    return await _settingsRepository.getBool(
      SettingsRepositoryKeys.darkMode,
    );
  }
}
