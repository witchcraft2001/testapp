part of '../onboarding_screen.dart';

class _Content extends StatelessWidget {
  const _Content({required this.data});
  final OnboardingReadyData data;

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;

    return TlRefresh(
      onRefresh: context.bloc<OnboardingCubit>().refresh,
      child: Scaffold(
        backgroundColor: colors?.color2,
        body: Stack(
          fit: StackFit.expand,
          children: [
            _OnboardingScreenBackground(),
            CustomScrollView(
              slivers: [
                const _OnboardingScreenTitleBlock(),
                _OnboardingScreenUsefullMaterialsBlock(usefullMaterials: data.usefullMaterials),
                _OnboardingScreenSpecialSectionsBlock(specialSections: data.specialSections),
                const _OnboardingScreenStagesBlockTitle(),
                _OnboardingScreenStagesBlock(stagesSections: data.stagesSections),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
