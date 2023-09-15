// Flutter imports:
import 'package:flutter/services.dart';

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
            (number.length > 7
                ? '-${number.substring(7, number.length >= 11 ? number.length : null)}'
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
