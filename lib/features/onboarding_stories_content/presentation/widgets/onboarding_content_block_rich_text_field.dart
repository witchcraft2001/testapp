part of 'onboarding_content_block.dart';

class _OnboardingContentBlockRichTextFieldWidget extends StatelessWidget {
  final List<ContentRichTextElement> elements;
  final OnboardingContentBlockParamsText params;

  const _OnboardingContentBlockRichTextFieldWidget({
    required this.elements,
    required this.params,
  });

  @override
  Widget build(BuildContext context) {
    if (elements.isEmpty) return const SizedBox();

    return Container(
      padding: params.padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: elements
            .map((item) => _OnboardingContentBlockRichTextBlock(
                  params: params,
                  child: item,
                ))
            .toList(),
      ),
    );
  }
}
