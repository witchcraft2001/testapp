// Package imports:
import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/media_content/domain/entities/media_content_rich_text_elements.dart';

const String _keyAttrHref = 'href';

const String _trashBr = '<br>';

const String _trashSpanStart =
    '<span style="background-color: var(--bg-pages-color); color: var(--content-main-color);">';
const String _trashSpanEnd = '</span>';

@LazySingleton(env: [Environment.dev, Environment.prod])
class MediaContentParsingTagsService {
  List<ContentRichTextElement> parseMediaContentData(String content) {
    // Если контент не начинается ни с какого тега, то парсинг не выполняется
    if (!isHtmlContent(content)) {
      return [
        ContentRichTextElement.text(text: content),
      ];
    }

    // Очистка контента от мусора
    final clearedContent = _filterContent(content);

    // Создается html-document
    final document = parse(clearedContent);

    final bodyElements = _getBodyElementsFromHTML(document);

    final parsedContent = _parseElements(bodyElements);

    return parsedContent;
  }

  List<ContentRichTextElement> _parseElements(List<Element> bodyElements) {
    final List<ContentRichTextElement> parsedContent = [];

    for (int i = 0; i < bodyElements.length; i++) {
      final tag = bodyElements[i];

      final parsedTag = _parseElement(tag);

      if (parsedTag is ContentRichTextElementUnsupported) {
        continue;
      }

      parsedContent.add(parsedTag);
    }

    return parsedContent;
  }

  ContentRichTextElement _parseElement(Element element) {
    final tag = element;

    if (_isHtmlParagraph(tag.outerHtml)) {
      return ContentRichTextElement.paragraph(
        children: _parseTag(tag),
      );
    }

    if (_isHtmlUnorderedList(tag.outerHtml)) {
      return ContentRichTextElement.unorderedList(
        children: _parseList(tag.children),
      );
    }

    if (_isHtmlOrderedList(tag.outerHtml)) {
      return ContentRichTextElement.orderedList(
        children: _parseList(tag.children),
      );
    }

    return const ContentRichTextElement.unsupported();
  }

  bool isHtmlContent(String content) {
    // Если контент начинается ни с какого тега, то контент считается html
    return content.startsWith('<');
  }

  List<Element> _getBodyElementsFromHTML(Document document) {
    // Берется содержимое тега <body>
    return document.body?.children ?? [];
  }

  bool _isHtmlParagraph(String content) {
    return content.startsWith('<p');
  }

  bool _isHtmlOrderedList(String content) {
    return content.startsWith('<ol');
  }

  bool _isHtmlUnorderedList(String content) {
    return content.startsWith('<ul');
  }

  String _filterContent(String content) {
    return content
        .replaceAll(_trashSpanStart, '')
        .replaceAll(_trashSpanEnd, '')
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

    for (int i = 0; i < tag.nodes.length; i++) {
      final node = tag.nodes[i];
      final contentElement = _contentRichTextElementFromNode(node);

      if (contentElement is! ContentRichTextElementUnsupported) {
        parsedContent.add(contentElement);
      }
    }

    return parsedContent;
  }

  ContentRichTextElement _contentRichTextElementFromNode(Node node) {
    if (node.nodeType == Node.TEXT_NODE && node.text != null) {
      return ContentRichTextElement.text(text: node.text!);
    }

    if (node.nodeType == Node.ELEMENT_NODE) {
      final child = node.firstChild;
      final String? link = _getLink(node: node, child: child);

      final String? text = node.text;

      if (text == null) {
        return const ContentRichTextElementUnsupported();
      }

      if (link == null && child != null) {
        return ContentRichTextElement.textBold(text: text);
      }

      if (link == null) {
        return ContentRichTextElement.text(text: text);
      }

      if (child != null && child.nodeType == Node.ELEMENT_NODE) {
        return ContentRichTextElement.linkBold(link: link, text: text);
      }

      return ContentRichTextElement.link(link: link, text: text);
    }

    return const ContentRichTextElementUnsupported();
  }

  String? _getLink({
    required Node node,
    required Node? child,
  }) {
    final String? link = child?.attributes.containsKey(_keyAttrHref) == true
        ? child?.attributes[_keyAttrHref]
        : node.attributes[_keyAttrHref];

    return link;
  }
}
