// Project imports:
import 'package:terralinkapp/data/models/app/app_tag_content/app_tag_content.dart';

// <p>Просто текст</p>
final mockParsedText = [
  const AppTagContent(
    parentType: AppTagParentType.p,
    contentType: AppTagContentType.text,
    text: 'Просто текст',
  ),
];

// <p>Текст с <b>жирным</b> словом внутри</p>
final mockParsedTextWithBold = [
  const AppTagContent(
    parentType: AppTagParentType.p,
    children: [
      AppTagContent(
        contentType: AppTagContentType.text,
        text: 'Текст с ',
      ),
      AppTagContent(
        contentType: AppTagContentType.textBold,
        text: 'жирным',
      ),
      AppTagContent(
        contentType: AppTagContentType.text,
        text: 'словом внутри',
      ),
    ],
  ),
];

// <p>Текст с <a href="http://212.41.9.88:90/api/news/" target="_blank">ссылкой</a> внутри</p>
final mockParsedTextWithLink = [
  const AppTagContent(
    parentType: AppTagParentType.p,
    children: [
      AppTagContent(
        contentType: AppTagContentType.text,
        text: 'Текст с ',
      ),
      AppTagContent(
        contentType: AppTagContentType.link,
        text: 'ссылкой',
        link: 'http://',
      ),
      AppTagContent(
        contentType: AppTagContentType.text,
        text: 'внутри',
      ),
    ],
  ),
];

// <p>Текст с жирной <b><a href="http://212.41.9.88:90/api/news/" target="_blank">ссылкой</a></b> внутри</p>
final mockParsedTextWithBoldLink = [
  const AppTagContent(
    parentType: AppTagParentType.p,
    children: [
      AppTagContent(
        contentType: AppTagContentType.text,
        text: 'Текст с жирной',
      ),
      AppTagContent(
        contentType: AppTagContentType.linkBold,
        text: 'ссылкой',
        link: 'http://',
      ),
      AppTagContent(
        contentType: AppTagContentType.text,
        text: 'внутри',
      ),
    ],
  ),
];

// <p>Текст первого параграфа</p>
// <p>Текст второго параграфа</p>
// <p>Текст третьего параграфа с <a href="http://212.41.9.88:90/api/news/" target="_blank">ссылкой</a> внутри</p>
final mockParsedSeveralTexts = [
  const AppTagContent(
    parentType: AppTagParentType.p,
    children: [
      AppTagContent(
        contentType: AppTagContentType.text,
        text: 'Текст первого параграфа',
      ),
    ],
  ),
  const AppTagContent(
    parentType: AppTagParentType.p,
    children: [
      AppTagContent(
        contentType: AppTagContentType.text,
        text: 'Текст второго параграфа',
      ),
    ],
  ),
  const AppTagContent(
    parentType: AppTagParentType.p,
    children: [
      AppTagContent(
        contentType: AppTagContentType.text,
        text: 'Текст третьего параграфа с',
      ),
      AppTagContent(
        contentType: AppTagContentType.link,
        text: 'ссылкой',
        link: 'http:',
      ),
      AppTagContent(
        contentType: AppTagContentType.text,
        text: 'внутри',
      ),
    ],
  ),
];

// <p>Список обычный</p>
// <ul>
//  <li>Пункт 1</li>
//  <li>Пункт 2 <b>жирный</b></li>
//  <li>Пункт 3 с <a href="http://212.41.9.88:90/api/news/" target="_blank">ссылкой</a></li>
// </ul>
final mockParsedList = [
  const AppTagContent(
    parentType: AppTagParentType.p,
    contentType: AppTagContentType.text,
    text: 'Список обычный',
  ),
  const AppTagContent(
    parentType: AppTagParentType.ul,
    children: [
      AppTagContent(
        parentType: AppTagParentType.li,
        contentType: AppTagContentType.text,
        text: 'Пункт 1',
      ),
      AppTagContent(
        parentType: AppTagParentType.li,
        children: [
          AppTagContent(
            contentType: AppTagContentType.text,
            text: 'Пункт 2 ',
          ),
          AppTagContent(
            contentType: AppTagContentType.textBold,
            text: 'жирный',
          ),
        ],
      ),
      AppTagContent(
        parentType: AppTagParentType.li,
        children: [
          AppTagContent(
            contentType: AppTagContentType.text,
            text: 'Пункт 3 с ',
          ),
          AppTagContent(
            contentType: AppTagContentType.link,
            text: 'ссылкой',
            link: 'http://',
          ),
        ],
      ),
    ],
  ),
];

// <p>Список обычный</p>
// <ol>
//  <li>Пункт 1</li>
//  <li>Пункт 2 <b>жирный</b></li>
//  <li>Пункт 3 с <a href="http://212.41.9.88:90/api/news/" target="_blank">ссылкой</a></li>
// </ol>
final mockParsedOrderedText = [
  const AppTagContent(
    parentType: AppTagParentType.p,
    contentType: AppTagContentType.text,
    text: 'Список нумерованный',
  ),
  const AppTagContent(
    parentType: AppTagParentType.ol,
    children: [
      AppTagContent(
        parentType: AppTagParentType.li,
        contentType: AppTagContentType.text,
        text: 'Пункт 1',
      ),
      AppTagContent(
        parentType: AppTagParentType.li,
        children: [
          AppTagContent(
            contentType: AppTagContentType.text,
            text: 'Пункт 2 ',
          ),
          AppTagContent(
            contentType: AppTagContentType.textBold,
            text: 'жирный',
          ),
        ],
      ),
      AppTagContent(
        parentType: AppTagParentType.li,
        children: [
          AppTagContent(
            contentType: AppTagContentType.text,
            text: 'Пункт 3 с ',
          ),
          AppTagContent(
            contentType: AppTagContentType.link,
            text: 'ссылкой',
            link: 'http://',
          ),
        ],
      ),
    ],
  ),
];
