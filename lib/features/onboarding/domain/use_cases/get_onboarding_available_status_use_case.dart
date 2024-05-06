// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/profile/domain/use_cases/get_profile_use_case.dart';
import 'package:terralinkapp/features/settings/data/repositories/settings_repository.dart';

abstract class GetOnboardingAvailableStatusUseCase implements AsyncParamlessUseCase<bool> {}

@Injectable(
  as: GetOnboardingAvailableStatusUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetOnboardingAvailableStatusUseCaseImpl implements GetOnboardingAvailableStatusUseCase {
  final SettingsRepository _settingsRepository;
  final GetProfileUseCase _getProfileUseCase;

  const GetOnboardingAvailableStatusUseCaseImpl(
    this._settingsRepository,
    this._getProfileUseCase,
  );

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
    'grebnevv@terralink-global.com',
  ];

  @override
  Future<bool> call([UseCaseParams params = const NoParams()]) async {
    final user = await _settingsRepository.getUserId();
    final profile = await _getProfileUseCase();

    return profile?.isOnboarding ?? _users.contains(user);
  }
}
