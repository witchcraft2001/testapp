part of 'tl_markdown.dart';

/// Парсинг [md.Node] to [html.Node]
List<SpanNode> parseHtml(
  md.Text node, {
  ValueCallback<dynamic>? onError,
  WidgetVisitor? visitor,
  TextStyle? parentStyle,
}) {
  try {
    final content = node.textContent;

    // Если контент не содержит тегов, то возврат ноды обычного текста
    if (!content.contains(regExpHtml)) return [TextNode(text: node.text)];

    // Если в контенте есть теги, то создание html-фрагмента
    html.DocumentFragment fragment = parseFragment(content);

    // Формирование списка нод для Text.rich
    return TlMarkdownTreeVisitor(
      visitor: visitor,
      parentStyle: parentStyle,
    ).toVisit(fragment.nodes.toList());
  } catch (e) {
    onError?.call(e);

    return [TextNode(text: node.text)];
  }
}
