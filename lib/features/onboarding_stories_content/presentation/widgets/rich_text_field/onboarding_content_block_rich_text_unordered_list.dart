part of '../onboarding_content_block.dart';

class _OnboardingContentBlockRichTextUnorderedList extends StatelessWidget {
  final List<ContentRichTextElement> children;
  final OnboardingContentBlockParamsText? params;

  const _OnboardingContentBlockRichTextUnorderedList({
    required this.children,
    this.params,
  });

  @override
  Widget build(BuildContext context) {
    return TlUnorderedBulletedList(
      color: params?.markColor,
      list: children
          .map((li) => _OnboardingContentBlockRichTextBlock(
                child: li,
                params: params?.unordered,
              ))
          .toList(),
    );
  }
}
