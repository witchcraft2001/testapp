part of 'onboarding_content_block.dart';

class _OnboardingContentBlockTitleWidget extends StatelessWidget {
  final String title;

  const _OnboardingContentBlockTitleWidget({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    if (title.isEmpty) return const SizedBox();

    return Text(
      title,
      style: context.appTheme?.text.w900s22cMain,
    );
  }
}
