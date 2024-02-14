// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/settings/data/data_sources/settings_data_source.dart';

abstract class GetSystemModeSettingsUseCase implements AsyncParamlessUseCase<bool?> {}

@LazySingleton(
  as: GetSystemModeSettingsUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetSystemModeSettingsUseCaseImpl extends GetSystemModeSettingsUseCase {
  final SettingsDataSource _settingsRepository;

  GetSystemModeSettingsUseCaseImpl(this._settingsRepository);

  @override
  Future<bool?> call([UseCaseParams params = const NoParams()]) async {
    return await _settingsRepository.getBool(
      SettingsRepositoryKeys.systemMode,
    );
  }
}
