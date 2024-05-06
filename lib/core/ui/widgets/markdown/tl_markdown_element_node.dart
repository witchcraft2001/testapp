part of 'tl_markdown.dart';

class TlMarkdownElementNode extends ElementNode {
  final String content;
  final MarkdownConfig config;
  final WidgetVisitor visitor;
  final BuildContext context;

  TlMarkdownElementNode(
    this.content,
    this.config,
    this.visitor,
    this.context,
  );

  @override
  void onAccepted(SpanNode parent) {
    final textStyle = config.p.textStyle.merge(parentStyle);

    // Очистка нод
    children.clear();

    // Если контент не содержит тегов, то возврат ноды обычного текста
    if (!content.contains(regExpHtml)) {
      return accept(TextNode(text: content, style: textStyle));
    }

    // Формирование нод на основе html
    final spans = parseHtml(
      md.Text(content),
      parentStyle: parentStyle,
      visitor: visitor,
    );

    for (final span in spans) {
      accept(span);
    }
  }
}
