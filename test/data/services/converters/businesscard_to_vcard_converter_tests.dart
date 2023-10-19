// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

// Project imports:
import 'package:terralinkapp/data/services/converters/businesscard_to_vcard_converter.dart';
import 'package:terralinkapp/domain/business_card.dart';
import 'package:terralinkapp/domain/business_card_locale.dart';
import '../../../mocks/common/constants_mock.mocks.dart';

void main() {
  const _globalWebPage = 'terralink-global.com';
  const _ruWebPage = 'terralink.ru';
  late BusinessCardToVCardConverter converter;
  late MockConstants constants;

  setUp(() {
    constants = MockConstants();
    converter = BusinessCardToVCardConverter(constants);

    when(constants.getGlobalWebPage()).thenReturn(_globalWebPage);
    when(constants.getRuWebPage()).thenReturn(_ruWebPage);
  });

  test('When business card in english Then generate plain version', () async {
    // Arrange
    final card = BusinessCard(
      1,
      'firstName',
      'lastName',
      'company',
      'position',
      '+7(999) 887-76-61',
      'email@email.com',
      BusinessCardLocale.ru,
      DateTime.now(),
    );
    final expectedVcard = '''
BEGIN:VCARD
VERSION:2.1
N:lastName;firstName;;;
FN:firstName lastName
TEL;CELL:79998877661
EMAIL;WORK:email@email.com
ORG:company
TITLE:position
URL:terralink.ru
END:VCARD
''';

    // Act
    final result = converter.toVCard(card: card, version: VCardVersion.v21);

    // Assert
    expect(result, expectedVcard);
  });

  test('When business card in cyrillic Then generate encoded version', () async {
    // Arrange
    final card = BusinessCard(
      1,
      'Дмитрий',
      'Михальченков',
      'Компания',
      'Инженер',
      '+79998877661',
      'email@email.com',
      BusinessCardLocale.ru,
      DateTime.now(),
    );
    final expectedVcard = '''
BEGIN:VCARD
VERSION:2.1
N;CHARSET=UTF-8;ENCODING=QUOTED-PRINTABLE:=D0=9C=D0=B8=D1=85=D0=B0=D0=BB=D1=8C=D1=87=D0=B5=D0=BD=D0=BA=D0=BE=D0=
=B2;=D0=94=D0=BC=D0=B8=D1=82=D1=80=D0=B8=D0=B9;;;
FN;CHARSET=UTF-8;ENCODING=QUOTED-PRINTABLE:=D0=94=D0=BC=D0=B8=D1=82=D1=80=D0=B8=D0=B9=20=D0=9C=D0=B8=D1=85=D0=B0=
=D0=BB=D1=8C=D1=87=D0=B5=D0=BD=D0=BA=D0=BE=D0=B2
TEL;CELL:79998877661
EMAIL;WORK:email@email.com
ORG;CHARSET=UTF-8;ENCODING=QUOTED-PRINTABLE:=D0=9A=D0=BE=D0=BC=D0=BF=D0=B0=D0=BD=D0=B8=D1=8F
TITLE;CHARSET=UTF-8;ENCODING=QUOTED-PRINTABLE:=D0=98=D0=BD=D0=B6=D0=B5=D0=BD=D0=B5=D1=80
URL:terralink.ru
END:VCARD
''';

    // Act
    final result = converter.toVCard(card: card, version: VCardVersion.v21);

    // Assert
    expect(result, expectedVcard);
  });

  test('When business card in cyrillic With version 3.0 Then generate plain version', () async {
    // Arrange
    final card = BusinessCard(
      1,
      'Дмитрий',
      'Михальченков',
      'Компания',
      'Инженер',
      '+79998877661',
      'email@email.com',
      BusinessCardLocale.ru,
      DateTime.now(),
    );
    final expectedVcard = '''
BEGIN:VCARD
VERSION:3.0
N:Михальченков;Дмитрий;;;
FN:Дмитрий Михальченков
TEL;CELL:79998877661
EMAIL;WORK:email@email.com
ORG:Компания
TITLE:Инженер
URL:terralink.ru
END:VCARD
''';

    // Act
    final result = converter.toVCard(card: card, version: VCardVersion.v30);

    // Assert
    expect(result, expectedVcard);
  });
}
