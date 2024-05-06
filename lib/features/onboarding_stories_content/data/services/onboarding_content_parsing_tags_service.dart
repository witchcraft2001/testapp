// Package imports:
import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/onboarding_stories_content/domain/entities/onboarding_content_rich_text_elements.dart';

const String _keyAttrHref = 'href';
const String _keyAttrStyle = 'style';

const String _trashBr = '<br>';
const String _trashColor = 'color: var(--content-main-color);';
const String _trashBgColor = 'background-color: var(--bg-pages-color);';
const String _trashSpanStart =
    '<span style="background-color: var(--bg-pages-color); color: var(--content-main-color);">';

const String _boldStart = '<b>';
const String _boldEnd = '</b>';

@LazySingleton(
  env: [Environment.dev, Environment.prod],
)
class OnboardingContentParsingTagsService {
  List<ContentRichTextElement> parseMediaContentData(String content) {
    // Если контент не начинается ни с какого тега, то парсинг не выполняется
    if (!isHtmlContent(content)) {
      return [
        ContentRichTextElement.text(text: content),
      ];
    }

    // Очистка контента от мусора
    final clearedContent = _clearContent(content);

    // Создается html-fragment
    final fragment = parseFragment(clearedContent);

    // Парсинг контента
    final parsedContent = _parseElements(fragment.children);

    return parsedContent;
  }

  List<ContentRichTextElement> _parseElements(List<Element> elements) {
    final List<ContentRichTextElement> parsedContent = [];

    for (final element in elements) {
      final parsedTag = _parseElement(element);

      if (parsedTag is ContentRichTextElementUnsupported) {
        continue;
      }

      parsedContent.add(parsedTag);
    }

    return parsedContent;
  }

  ContentRichTextElement _parseElement(Element element) {
    switch (element.localName) {
      case 'p':
        return ContentRichTextElement.paragraph(
          children: _parseTag(element),
        );

      case 'ol':
        return ContentRichTextElement.orderedList(
          children: _parseList(element.children),
        );

      case 'ul':
        return ContentRichTextElement.unorderedList(
          children: _parseList(element.children),
        );

      default:
        return const ContentRichTextElement.unsupported();
    }
  }

  bool isHtmlContent(String content) {
    // Если контент начинается с какого-то тега, то контент считается html
    return content.startsWith('<');
  }

  String _clearContent(String content) {
    return content
        .replaceAll(_trashColor, '')
        .replaceAll(_trashBgColor, '')
        .replaceAll(_trashSpanStart, '<span>')
        .replaceAll(' style=""', '')
        .replaceAll(' style=" "', '')
        .replaceAll(' style="  "', '')
        .replaceAll(_boldStart, '<span style="font-weight: 700;">')
        .replaceAll(_boldEnd, '</span>')
        .replaceAll(_trashBr, '');
  }

  List<ContentRichTextElement> _parseList(List<Element> list) {
    return list.map((li) {
      final localName = li.localName;

      if (['ol', 'ul'].contains(localName)) {
        return _parseElement(li);
      }

      return ContentRichTextElement.paragraph(
        children: _parseTag(li),
      );
    }).toList();
  }

  List<ContentRichTextElement> _parseTag(Element tag) {
    List<ContentRichTextElement> parsedContent = [];

    for (final node in tag.nodes) {
      // Если дочерних элементов больше одного, то парсится каждая дочерняя нода отдельно
      // Пример сутиации: <b>текст <a>ссылка</a></b>
      if (node.nodes.length > 1) {
        for (final child in node.nodes) {
          _parseNode(child, parsedContent);
        }
      } else {
        _parseNode(node, parsedContent);
      }
    }

    return parsedContent;
  }

  void _parseNode(Node node, List<ContentRichTextElement> parsedContent) {
    final contentElement = _contentRichTextElementFromNode(node);

    if (contentElement is! ContentRichTextElementUnsupported) {
      parsedContent.add(contentElement);
    }
  }

  ContentRichTextElement _contentRichTextElementFromNode(Node node) {
    final String? text = node.text;

    if (node.nodeType == Node.TEXT_NODE && text != null) {
      if (_getIsBold(parent: node.parent)) {
        return ContentRichTextElement.textBold(text: text);
      }

      return ContentRichTextElement.text(text: text);
    }

    if (node.nodeType == Node.ELEMENT_NODE) {
      if (text == null) {
        return const ContentRichTextElementUnsupported();
      }

      final child = node.firstChild;

      final String? link = _getLink(node: node, child: child);
      final bool isBold = _getIsBold(node: node, child: child);

      if (link != null) {
        final isBoldParent = _getIsBold(parent: node.parent);

        if (isBoldParent || isBold) {
          return ContentRichTextElement.linkBold(link: link, text: text);
        }

        return ContentRichTextElement.link(link: link, text: text);
      }

      if (isBold) {
        return ContentRichTextElement.textBold(text: text);
      }

      return ContentRichTextElement.text(text: text);
    }

    return const ContentRichTextElementUnsupported();
  }

  String? _getLink({
    required Node node,
    Node? child,
  }) {
    final String? link = child?.attributes.containsKey(_keyAttrHref) == true
        ? child?.attributes[_keyAttrHref]
        : node.attributes[_keyAttrHref];

    return link;
  }

  bool _getIsBold({
    Element? parent,
    Node? node,
    Node? child,
  }) {
    String? style;

    if (parent != null) {
      style = parent.attributes[_keyAttrStyle];
    }

    if (node != null || child != null) {
      style = node?.attributes[_keyAttrStyle] ?? child?.attributes[_keyAttrStyle];
    }

    final isBoldStyle = style != null && style.contains('font-weight: 700');

    return isBoldStyle;
  }
}
