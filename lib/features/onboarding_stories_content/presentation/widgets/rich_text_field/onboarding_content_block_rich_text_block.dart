part of '../onboarding_content_block.dart';

class _OnboardingContentBlockRichTextBlock extends StatelessWidget {
  final ContentRichTextElement child;
  final OnboardingContentBlockParamsText? params;

  const _OnboardingContentBlockRichTextBlock({
    required this.child,
    required this.params,
  });

  @override
  Widget build(BuildContext context) {
    return child.maybeWhen(
      paragraph: (children) => _OnboardingContentBlockRichTextParagraph(
        items: children,
        params: params?.paragraph,
      ),
      orderedList: (children) => _OnboardingContentBlockRichTextOrderedList(
        children: children,
        params: params?.ordered,
      ),
      unorderedList: (children) => _OnboardingContentBlockRichTextUnorderedList(
        children: children,
        params: params?.unordered,
      ),
      orElse: () => const SizedBox(),
    );
  }
}
