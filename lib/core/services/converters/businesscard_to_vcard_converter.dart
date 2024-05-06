// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/common/constants.dart';
import 'package:terralinkapp/core/common/regexp.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card_locale.dart';

@injectable
class BusinessCardToVCardConverter {
  final Constants _constants;

  BusinessCardToVCardConverter(this._constants);

  String toVCard({
    required BusinessCard card,
    VCardVersion version = VCardVersion.v21,
  }) {
    final builder = StringBuffer();
    builder.writeln('BEGIN:VCARD');
    builder.writeln('VERSION:${version.version}');

    builder.writeln(
      _writeFieldWithEncodedString('N', version, [card.lastName, card.firstName, '', '', '']),
    );

    final formattedName = [card.firstName, card.lastName].join(' ');

    builder.writeln(_writeFieldWithEncodedString('FN', version, [formattedName]));

    if (card.phone.isNotEmpty) {
      builder.writeln(_writeField('TEL;CELL', ['+${card.phone.replaceAll(regExpOnlyDigits, '')}']));
    }

    if (card.email.isNotEmpty) {
      builder.writeln(_writeField('EMAIL;WORK', [card.email]));
    }

    if (card.position.isNotEmpty) {
      builder.writeln(_writeFieldWithEncodedString('ORG', version, [card.company]));
      builder.writeln(_writeFieldWithEncodedString('TITLE', version, [card.position]));
    }

    final website = switch (card.locale) {
      BusinessCardLocale.global => _constants.getGlobalWebPage(),
      BusinessCardLocale.ru => _constants.getRuWebPage(),
    };
    builder.writeln(_writeField('URL', [website]));
    builder.writeln('END:VCARD');

    return builder.toString();
  }

  String _writeField(String fieldname, List<String> values) {
    final encodedValues = values.join(';');

    return '$fieldname:$encodedValues';
  }

  String _writeFieldWithEncodedString(String fieldname, VCardVersion version, List<String> values) {
    final encodingPrefix =
        version == VCardVersion.v21 && values.any((element) => _isNeedEncoding(element, version))
            ? ';CHARSET=UTF-8;ENCODING=QUOTED-PRINTABLE'
            : '';

    final encodedValues =
        values.map((e) => _isNeedEncoding(e, version) ? _encodeString(e) : e).join(';');

    return '$fieldname$encodingPrefix:$encodedValues';
  }

  String _encodeString(String string) {
    final encoded = Uri.encodeComponent(string);
    if (!encoded.contains('%')) {
      return encoded;
    }

    final split = encoded.split('%').where((element) => element.isNotEmpty).toList();

    if (split.length > 23) {
      final builder = StringBuffer();

      for (int index = 0; index < split.length; index++) {
        if (index != 0 && index % 23 == 0) {
          builder.writeln("=");
        }
        builder.write('=${split[index]}');
      }

      return builder.toString();
    } else {
      return encoded.replaceAll('%', '=');
    }
  }

  bool _isNeedEncoding(String string, VCardVersion version) {
    if (version == VCardVersion.v30) {
      return false;
    }

    final plainString = string.replaceAll(' ', '');

    return plainString != _encodeString(plainString);
  }
}

enum VCardVersion {
  v21('2.1'),
  v30('3.0');

  const VCardVersion(this.version);

  final String version;
}
