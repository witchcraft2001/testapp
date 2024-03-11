// Flutter imports:
import 'package:flutter/services.dart';

final _regExpPrefixCurrency = RegExp(r'[^\a-zA-ZА-Яа-яЁё -]');
final _regExpNumber = RegExp(r'[^.,0-9]');

String formatPriceToGoodLook(String value) {
  final prefix = value.replaceAll(_regExpPrefixCurrency, '');
  final parts = value.replaceAll(_regExpNumber, '').replaceAll('.', ',').split(',');

  if (parts.first.length > 3) {
    final int valueInt = int.parse(parts.first);

    String valueStr = '';
    int counter = 0;

    for (int i = valueInt.toString().length - 1; i >= 0; i--) {
      counter++;
      final String str = parts.first[i];

      if ((counter % 3) != 0 && i != 0) {
        valueStr = '$str$valueStr';
      } else if (i == 0) {
        valueStr = '$str$valueStr';
      } else {
        valueStr = ' $str$valueStr';
      }
    }

    if (parts.length == 2) {
      return '$prefix${valueStr.trim()},${parts.last}';
    }

    return '$prefix${valueStr.trim()}';
  }

  return value;
}

class InternationalPhoneFormatter extends TextInputFormatter {
  String internationalPhoneFormat(value) {
    final number = value.replaceAll(RegExp(r'\D'), '').replaceAll(RegExp(r'^89'), '79');

    final firstChar = '${number.substring(0, number.isNotEmpty ? 1 : null)}';
    final firstBracket = number.length > 1 ? ' (' : '';

    final countryCode =
        number.length >= 1 ? '${number.substring(1, number.length >= 4 ? 4 : null)}' : '';

    final secondBracket = number.length > 4 ? ') ' : '';

    final phoneNumber = number.length > 4
        ? number.substring(4, number.length >= 7 ? 7 : null) +
            (number.length > 7 ? '-${number.substring(7, number.length >= 9 ? 9 : null)}' : '') +
            (number.length > 9
                ? '-${number.substring(9, number.length >= 11 ? number.length : null)}'
                : '')
        : '';

    String internationalPhoneFormatted = number.isNotEmpty
        ? '+$firstChar$firstBracket$countryCode$secondBracket$phoneNumber'
        : number;

    return internationalPhoneFormatted;
  }

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String text = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    return newValue.copyWith(
      text: internationalPhoneFormat(text),
      selection: TextSelection.collapsed(offset: internationalPhoneFormat(text).length),
    );
  }
}

String getLoginWithoutDomain(String value) => value.replaceAll(RegExp(r'(.*\\)'), '').toLowerCase();
