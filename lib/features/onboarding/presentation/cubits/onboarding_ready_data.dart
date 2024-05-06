// Package imports:
import 'package:equatable/equatable.dart';

// Project imports:
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_special_section.dart';
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_stages_section.dart';
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_usefull_section.dart';

class OnboardingReadyData extends Equatable {
  const OnboardingReadyData({
    required this.stagesSections,
    required this.usefullMaterials,
    required this.specialSections,
  });

  final List<OnboardingStageSection> stagesSections;
  final List<OnboardingUsefullMaterial> usefullMaterials;
  final List<OnboardingSpecialSection> specialSections;

  OnboardingReadyData copyWith({
    List<OnboardingStageSection>? stagesSections,
    List<OnboardingUsefullMaterial>? usefullMaterials,
    List<OnboardingSpecialSection>? specialSections,
  }) =>
      OnboardingReadyData(
        stagesSections: stagesSections ?? this.stagesSections,
        usefullMaterials: usefullMaterials ?? this.usefullMaterials,
        specialSections: specialSections ?? this.specialSections,
      );

  @override
  List<Object?> get props => [
        ...stagesSections,
        ...usefullMaterials,
        ...specialSections,
      ];
}
