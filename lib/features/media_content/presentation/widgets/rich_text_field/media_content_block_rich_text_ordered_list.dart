part of '../media_content_block.dart';

class _MediaContentBlockRichTextOrderedList extends StatelessWidget {
  final List<ContentRichTextElement> children;
  final MediaContentBlockParamsText? params;

  const _MediaContentBlockRichTextOrderedList({
    required this.children,
    this.params,
  });

  @override
  Widget build(BuildContext context) {
    return TlOrderedBulletedList(
      color: params?.markColor,
      list: children
          .map((li) => _MediaContentBlockRichTextBlock(
                child: li,
                params: params?.ordered,
              ))
          .toList(),
    );
  }
}
