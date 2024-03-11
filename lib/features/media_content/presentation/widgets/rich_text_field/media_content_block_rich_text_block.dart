part of '../media_content_block.dart';

class _MediaContentBlockRichTextBlock extends StatelessWidget {
  final ContentRichTextElement child;
  final MediaContentBlockParamsText? params;

  const _MediaContentBlockRichTextBlock({
    required this.child,
    required this.params,
  });

  @override
  Widget build(BuildContext context) {
    return child.maybeWhen(
      paragraph: (children) => _MediaContentBlockRichTextParagraph(
        items: children,
        params: params?.paragraph,
      ),
      orderedList: (children) => _MediaContentBlockRichTextOrderedList(
        children: children,
        params: params?.ordered,
      ),
      unorderedList: (children) => _MediaContentBlockRichTextUnorderedList(
        children: children,
        params: params?.unordered,
      ),
      orElse: () => const SizedBox(),
    );
  }
}
