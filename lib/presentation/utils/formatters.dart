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

    return '$prefix${valueStr.trim()},${parts.last}';
  }

  return value;
}
