part of 'media_content_block.dart';

class _MediaContentBlockRichTextFieldWidget extends StatelessWidget {
  final List<ContentRichTextElement> elements;
  final MediaContentBlockParamsText params;

  const _MediaContentBlockRichTextFieldWidget({
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
            .map((item) => _MediaContentBlockRichTextBlock(
                  params: params,
                  child: item,
                ))
            .toList(),
      ),
    );
  }
}
