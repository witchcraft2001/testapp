part of 'onboarding_content_block.dart';

class _OnboardingContentBlockGroupWidget extends StatelessWidget {
  final Widget child;

  const _OnboardingContentBlockGroupWidget({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: TlSpaces.pv8,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: TlDecoration.brBtnBase,
          color: context.appTheme?.colors.bgForms,
        ),
        child: Padding(
          padding: TlSpaces.ph16v24,
          child: child,
        ),
      ),
    );
  }
}
