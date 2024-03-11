part of '../onboarding_screen.dart';

class _OnboardingScreenStagesBlockTitle extends StatelessWidget {
  const _OnboardingScreenStagesBlockTitle();

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;

    return SliverToBoxAdapter(
      child: Container(
        color: colors?.bgForms,
        child: ClipRRect(
          borderRadius: TlDecoration.brOnboardingBottomForm,
          child: Container(
            color: colors?.color2,
            child: Padding(
              padding: TlSpaces.ph16v24,
              child: Text(
                S.current.onboardingStages,
                style: context.appTheme?.text.w700s22cContrast,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
