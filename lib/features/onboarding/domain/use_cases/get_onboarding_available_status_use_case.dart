// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/settings/data/repositories/settings_repository.dart';

abstract class GetOnboardingAvailableStatusUseCase implements AsyncParamlessUseCase<bool> {}

@Injectable(
  as: GetOnboardingAvailableStatusUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetOnboardingAvailableStatusUseCaseImpl implements GetOnboardingAvailableStatusUseCase {
  const GetOnboardingAvailableStatusUseCaseImpl(this._settingsRepository);

  final SettingsRepository _settingsRepository;

  static const List<String> _users = [
    'test_user1@terralink-global.com',
    'samoylovm@terralink-global.com',
    'tolstikovn@terralink-global.com',
    'kuzyaevr@terralink-global.com',
    'yanishevskiya@terralink-global.com',
    'vilinskimazurk@terralink-global.com',
    'sladkovev@terralink-global.com',
    'antonyuke@terralink-global.com',
    'chaykas@terralink-global.com',
    'chiginv@terralink-global.com',
  ];

  @override
  Future<bool> call([UseCaseParams params = const NoParams()]) async {
    final user = await _settingsRepository.getUserId();

    return _users.contains(user);
  }
}
