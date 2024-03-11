// Project imports:
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_special_section.dart';
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_stages_section.dart';
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_usefull_section.dart';

abstract class OnboardingRepository {
  Future<List<OnboardingStageSection>> getStagesSections();
  Future<List<OnboardingUsefullMaterial>> getUsefullMaterials();
  Future<List<OnboardingSpecialSection>> getSpecialSections();
}
