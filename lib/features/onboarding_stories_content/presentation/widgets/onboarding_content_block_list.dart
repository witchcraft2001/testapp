part of 'onboarding_content_block.dart';

class _OnboardingContentBlockListWidget extends StatelessWidget {
  final List<Widget> children;

  const _OnboardingContentBlockListWidget({
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    );
  }
}
