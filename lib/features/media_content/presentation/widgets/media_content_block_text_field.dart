part of 'media_content_block.dart';

class _MediaContentBlockTextFieldWidget extends StatelessWidget {
  final String text;
  final MediaContentBlockParamsText params;

  const _MediaContentBlockTextFieldWidget({
    required this.text,
    required this.params,
  });

  @override
  Widget build(BuildContext context) {
    if (text.isEmpty) return const SizedBox();

    return TlHtml(content: text, padding: params.padding);
  }
}
