part of 'tl_markdown.dart';

class TlMarkdownTreeVisitor extends TreeVisitor {
  final WidgetVisitor visitor;
  final TextStyle parentStyle;

  TlMarkdownTreeVisitor({
    WidgetVisitor? visitor,
    TextStyle? parentStyle,
  })  : visitor = visitor ?? WidgetVisitor(),
        parentStyle = parentStyle ?? const AppTextStyle.font();

  final List<SpanNode> _spans = [];
  final List<SpanNode> _spansStack = [];

  List<SpanNode> toVisit(List<html.Node> nodes) {
    _spans.clear();

    for (final node in nodes) {
      final emptyNode = ConcreteElementNode(style: parentStyle);

      _spans.add(emptyNode);
      _spansStack.add(emptyNode);

      visit(node);

      _spansStack.removeLast();
    }

    final result = List.of(_spans);

    _spans.clear();
    _spansStack.clear();

    return result;
  }

  @override
  void visitText(html.Text node) {
    final last = _spansStack.last;

    if (last is ElementNode) {
      final textNode = TextNode(text: node.text);
      last.accept(textNode);
    }
  }

  @override
  void visitElement(html.Element node) {
    final tagName = node.localName ?? ''; // определение тега ноды
    final mdElement = md.Element(tagName, []); // создание MD-элемента на основе тега

    mdElement.attributes.addAll(node.attributes.cast()); // перенос атрибутов ноды в МД

    SpanNode spanNode =
        visitor.getNodeByElement(mdElement, visitor.config); // определение типа spanNode

    // Если spanNode НЕ элемент, например, <br>, то:
    if (spanNode is! ElementNode) {
      final n = ConcreteElementNode(tag: tagName, style: parentStyle);

      n.accept(spanNode);
      spanNode = n;
    }

    final SpanNode last = _spansStack.last;

    // Если spanNode элемент, то:
    if (last is ElementNode) {
      last.accept(spanNode);
    }

    _spansStack.add(spanNode);

    for (var child in node.nodes.toList(growable: false)) {
      visit(child);
    }

    _spansStack.removeLast();
  }
}
