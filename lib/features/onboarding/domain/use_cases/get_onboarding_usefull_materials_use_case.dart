// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_usefull_section.dart';
import 'package:terralinkapp/features/onboarding/domain/repositories/onboarding_repository.dart';

// Package imports:

abstract class GetOnboardingUsefullMaterialsUseCase
    implements AsyncParamlessUseCase<List<OnboardingUsefullMaterial>> {}

@Injectable(
  as: GetOnboardingUsefullMaterialsUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetOnboardingUsefullMaterialsUseCaseImpl implements GetOnboardingUsefullMaterialsUseCase {
  const GetOnboardingUsefullMaterialsUseCaseImpl({
    required OnboardingRepository onboardingRepository,
  }) : _onboardingRepository = onboardingRepository;

  final OnboardingRepository _onboardingRepository;

  @override
  Future<List<OnboardingUsefullMaterial>> call([UseCaseParams params = const NoParams()]) async {
    final List<OnboardingUsefullMaterial> result =
        await _onboardingRepository.getUsefullMaterials();

    return result;
  }
}
