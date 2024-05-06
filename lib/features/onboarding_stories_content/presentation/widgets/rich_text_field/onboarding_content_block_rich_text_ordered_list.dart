part of '../onboarding_content_block.dart';

class _OnboardingContentBlockRichTextOrderedList extends StatelessWidget {
  final List<ContentRichTextElement> children;
  final OnboardingContentBlockParamsText? params;

  const _OnboardingContentBlockRichTextOrderedList({
    required this.children,
    this.params,
  });

  @override
  Widget build(BuildContext context) {
    return TlOrderedBulletedList(
      color: params?.markColor,
      list: children
          .map((li) => _OnboardingContentBlockRichTextBlock(
                child: li,
                params: params?.ordered,
              ))
          .toList(),
    );
  }
}
