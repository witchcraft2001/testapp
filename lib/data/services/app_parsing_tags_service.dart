// Package imports:
import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/models/app/app_tag_content/app_tag_content.dart';

const _keyAttrHref = 'href';

const _trashBr = '<br>';

const _trashSpanStart =
    '<span style="background-color: var(--bg-pages-color); color: var(--content-main-color);">';
const _trashSpanEnd = '</span>';

@LazySingleton(env: [Environment.dev, Environment.prod])
class AppParsingTagsService {
  List<AppTagContent> parseData(String content) {
    // Если контент не начинается ни с какого тега, то парсинг не выполняется
    if (!content.startsWith('<')) {
      return [
        AppTagContent(
          parentType: AppTagParentType.noTag,
          text: content,
        ),
      ];
    }

    // Очистка контента от мусора
    final clearedContent = content
        .replaceAll(_trashSpanStart, '')
        .replaceAll(_trashSpanEnd, '')
        .replaceAll(_trashBr, '');

    // Создается html-document
    final document = parse(clearedContent);

    // Берется содержимое тега <body>
    final body = document.children[0].children[1];

    List<AppTagContent> parsedContent = [];

    for (final tag in body.children) {
      if (tag.outerHtml.startsWith('<p')) {
        parsedContent.add(
          AppTagContent(
            parentType: AppTagParentType.p,
            children: _parseTag(tag),
          ),
        );
      }

      if (tag.outerHtml.startsWith('<ul')) {
        parsedContent.add(
          AppTagContent(
            parentType: AppTagParentType.ul,
            children: _parseList(tag.children),
          ),
        );
      }

      if (tag.outerHtml.startsWith('<ol')) {
        parsedContent.add(
          AppTagContent(
            parentType: AppTagParentType.ol,
            children: _parseList(tag.children),
          ),
        );
      }
    }

    return parsedContent;
  }

  List<AppTagContent> _parseList(List<Element> list) => list
      .map(
        (li) => AppTagContent(
          parentType: AppTagParentType.li,
          children: _parseTag(li),
        ),
      )
      .toList();

  List<AppTagContent> _parseTag(Element tag) {
    List<AppTagContent> parsedContent = [];

    for (final node in tag.nodes) {
      if (node.nodeType == Node.TEXT_NODE) {
        parsedContent.add(
          AppTagContent(
            contentType: AppTagContentType.text,
            text: node.text,
          ),
        );
      }

      if (node.nodeType == Node.ELEMENT_NODE) {
        AppTagContentType? contentType;
        String? link;

        final child = node.firstChild;

        if (child != null && child.attributes.containsKey(_keyAttrHref)) {
          contentType = AppTagContentType.linkBold;
          link = child.attributes[_keyAttrHref];
        }

        if (child != null && !child.attributes.containsKey(_keyAttrHref)) {
          contentType = AppTagContentType.textBold;
        }

        if (node.attributes.containsKey(_keyAttrHref)) {
          contentType = child?.nodeType == Node.ELEMENT_NODE
              ? AppTagContentType.linkBold
              : AppTagContentType.link;

          link = node.attributes[_keyAttrHref];
        }

        parsedContent.add(
          AppTagContent(
            contentType: contentType,
            text: node.text,
            link: link,
          ),
        );
      }
    }

    return parsedContent;
  }
}
