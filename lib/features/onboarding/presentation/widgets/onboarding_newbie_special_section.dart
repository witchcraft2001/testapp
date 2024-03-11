part of '../onboarding_screen.dart';

class OnboardingNewbieSpecialSection extends StatelessWidget {
  const OnboardingNewbieSpecialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return _OnboardingSpecialSectionWidget(
      title: S.current.onboardingForNewbie,
      subtitle: S.current.onboardingForNewbieDescription,
      image: TlAssets.imageOnboardingNewbie,
      onTap: () {
        appNavigationService.goNamed(
          context,
          AppRoutes.onboarding.name,
        );
      },
    );
  }
}
