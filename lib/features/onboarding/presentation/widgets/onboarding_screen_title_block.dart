part of '../onboarding_screen.dart';

class _OnboardingScreenTitleBlock extends StatelessWidget {
  const _OnboardingScreenTitleBlock();

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;

    return SliverToBoxAdapter(
      child: Container(
        color: colors?.bgForms,
        child: Padding(
          padding: TlSpaces.ph16v8,
          child: Text(
            S.current.onboarding,
            style: context.appTheme?.text.w700s22cContrast,
          ),
        ),
      ),
    );
  }
}
