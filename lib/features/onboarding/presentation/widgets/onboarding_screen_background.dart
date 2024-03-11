part of '../onboarding_screen.dart';

class _OnboardingScreenBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;

    return Column(
      children: [
        Expanded(
          child: Container(
            color: colors?.bgForms,
          ),
        ),
        Expanded(
          child: Container(
            color: colors?.color2,
          ),
        ),
      ],
    );
  }
}
