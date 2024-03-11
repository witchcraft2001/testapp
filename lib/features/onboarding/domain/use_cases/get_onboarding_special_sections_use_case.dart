// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_special_section.dart';
import 'package:terralinkapp/features/onboarding/domain/repositories/onboarding_repository.dart';

// Package imports:

abstract class GetOnboardingSpecialSelectionsUseCase
    implements AsyncParamlessUseCase<List<OnboardingSpecialSection>> {}

@Injectable(
  as: GetOnboardingSpecialSelectionsUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetOnboardingSpecialSelectionsUseCaseImpl implements GetOnboardingSpecialSelectionsUseCase {
  const GetOnboardingSpecialSelectionsUseCaseImpl({required OnboardingRepository onboardingRepository})
      : _onboardingRepository = onboardingRepository;

  final OnboardingRepository _onboardingRepository;

  @override
  Future<List<OnboardingSpecialSection>> call([UseCaseParams params = const NoParams()]) async {
    final List<OnboardingSpecialSection> result = await _onboardingRepository.getSpecialSections();

    return result;
  }
}
