// Package imports:
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_special_section.dart';
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_stages_section.dart';
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_usefull_section.dart';

part 'onboarding_cubit_state.freezed.dart';

@freezed
class OnboardingCubitState with _$OnboardingCubitState {
  const factory OnboardingCubitState.loading() = _OnboardingCubitStateLoading;

  const factory OnboardingCubitState.ready(OnboardingState data) = _OnboardingCubitStateReady;
}

class OnboardingState extends Equatable {
  const OnboardingState({
    required this.stagesSections,
    required this.usefullMaterials,
    required this.specialSections,
  });

  final List<OnboardingStageSection> stagesSections;
  final List<OnboardingUsefullMaterial> usefullMaterials;
  final List<OnboardingSpecialSection> specialSections;

  OnboardingState copyWith({
    List<OnboardingStageSection>? stagesSections,
    List<OnboardingUsefullMaterial>? usefullMaterials,
    List<OnboardingSpecialSection>? specialSections,
  }) =>
      OnboardingState(
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
