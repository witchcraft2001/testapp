part of 'onboarding_content_block.dart';

class _OnboardingContentBlockLinkedButtonWidget extends StatelessWidget {
  final String title;
  final String link;

  const _OnboardingContentBlockLinkedButtonWidget({
    required this.title,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    if (title.isEmpty || link.isEmpty) {
      return const SizedBox();
    }

    return TlButton(
      title: title,
      type: AppBtnType.secondary,
      onPressed: () => goToUrlOrEmail(context, link),
    );
  }
}
