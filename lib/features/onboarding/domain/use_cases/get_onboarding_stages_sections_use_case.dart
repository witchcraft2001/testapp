// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_stages_section.dart';
import 'package:terralinkapp/features/onboarding/domain/repositories/onboarding_repository.dart';

abstract class GetOnboardingStagesSelectionsUseCase
    implements AsyncParamlessUseCase<List<OnboardingStageSection>> {}

@Injectable(
  as: GetOnboardingStagesSelectionsUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetOnboardingStagesSelectionsUseCaseImpl implements GetOnboardingStagesSelectionsUseCase {
  const GetOnboardingStagesSelectionsUseCaseImpl({
    required OnboardingRepository onboardingRepository,
  }) : _onboardingRepository = onboardingRepository;

  final OnboardingRepository _onboardingRepository;

  @override
  Future<List<OnboardingStageSection>> call([UseCaseParams params = const NoParams()]) async {
    final List<OnboardingStageSection> result = await _onboardingRepository.getStagesSections();

    return result;
  }
}
