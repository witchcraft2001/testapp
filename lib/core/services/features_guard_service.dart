// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/onboarding/domain/use_cases/get_onboarding_available_status_use_case.dart';
import 'package:terralinkapp/features/welcome/domain/use_cases/get_welcome_available_status_use_case.dart';

enum Feature {
  onboarding,
  welcome;
}

abstract class FeaturesGuardService {
  Future<bool> isAvailable(Feature feature);
}

@LazySingleton(
  env: [Environment.dev, Environment.prod],
  as: FeaturesGuardService,
)
class FeaturesGuardServiceImpl implements FeaturesGuardService {
  FeaturesGuardServiceImpl({
    required GetOnboardingAvailableStatusUseCase getOnboardingAvailableStatusUseCase,
    required GetWelcomeAvailableStatusUseCase getOnboardingStatusUseCase,
  })  : _getOnboardingAvailableStatusUseCase = getOnboardingAvailableStatusUseCase,
        _getOnboardingStatusUseCase = getOnboardingStatusUseCase;

  final GetOnboardingAvailableStatusUseCase _getOnboardingAvailableStatusUseCase;
  final GetWelcomeAvailableStatusUseCase _getOnboardingStatusUseCase;

  @override
  Future<bool> isAvailable(Feature feature) {
    return switch (feature) {
      Feature.onboarding => _getOnboardingAvailableStatusUseCase(),
      Feature.welcome => _getOnboardingStatusUseCase(),
    };
  }
}
