part of '../media_content_block.dart';

class _MediaContentBlockRichTextUnorderedList extends StatelessWidget {
  final List<ContentRichTextElement> children;
  final MediaContentBlockParamsText? params;

  const _MediaContentBlockRichTextUnorderedList({
    required this.children,
    this.params,
  });

  @override
  Widget build(BuildContext context) {
    return TlUnorderedBulletedList(
      color: params?.markColor,
      list: children
          .map((li) => _MediaContentBlockRichTextBlock(
                child: li,
                params: params?.unordered,
              ))
          .toList(),
    );
  }
}
