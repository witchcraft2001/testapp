// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/settings/data/repositories/settings_repository.dart';
import 'package:terralinkapp/features/welcome/data/data_source/local_welcome_data_source.dart';

abstract class SetWelcomeAsPassedUseCase implements AsyncParamlessUseCase<void> {}

@Injectable(
  as: SetWelcomeAsPassedUseCase,
  env: [Environment.dev, Environment.prod],
)
class SetWelcomeAsPassedUseCaseLocalImpl implements SetWelcomeAsPassedUseCase {
  const SetWelcomeAsPassedUseCaseLocalImpl(
    this._welcomeDataSource,
    this._settingsRepository,
  );

  final SettingsRepository _settingsRepository;
  final WelcomeDataSource _welcomeDataSource;

  @override
  Future<void> call([UseCaseParams params = const NoParams()]) async {
    final user = await _settingsRepository.getUserId();
    if (user == null) return;

    await _welcomeDataSource.setPassedStatus(true, user);
  }
}
