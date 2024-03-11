// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_special_section.dart';
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_stages_section.dart';
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_usefull_section.dart';
import 'package:terralinkapp/features/onboarding/domain/use_cases/get_onboarding_special_sections_use_case.dart';
import 'package:terralinkapp/features/onboarding/domain/use_cases/get_onboarding_stages_sections_use_case.dart';
import 'package:terralinkapp/features/onboarding/domain/use_cases/get_onboarding_usefull_materials_use_case.dart';
import 'package:terralinkapp/features/onboarding/presentation/cubits/onboarding_cubit_state.dart';

@injectable
class OnboardingCubit extends Cubit<OnboardingCubitState> {
  OnboardingCubit(
    this._getOnboardingSpecialSelections,
    this._getOnboardingStagesSelections,
    this._getOnboardingUsefullMaterials,
  ) : super(const OnboardingCubitState.loading());

  final GetOnboardingSpecialSelectionsUseCase _getOnboardingSpecialSelections;
  final GetOnboardingUsefullMaterialsUseCase _getOnboardingUsefullMaterials;
  final GetOnboardingStagesSelectionsUseCase _getOnboardingStagesSelections;

  Future<void> init() async {
    _retrieveInfo();
  }

  Future<void> refresh() async {
    await _retrieveInfo();
  }

  Future<void> _retrieveInfo() async {
    emit(const OnboardingCubitState.loading());

    final List<OnboardingStageSection> stagesSections = await _getOnboardingStagesSelections();
    final List<OnboardingUsefullMaterial> usefullMaterials = await _getOnboardingUsefullMaterials();
    final List<OnboardingSpecialSection> specialSections = await _getOnboardingSpecialSelections();

    emit(
      OnboardingCubitState.ready(
        OnboardingState(
          stagesSections: stagesSections,
          usefullMaterials: usefullMaterials,
          specialSections: specialSections,
        ),
      ),
    );
  }
}
