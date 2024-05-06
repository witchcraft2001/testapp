// Project imports:
import 'package:terralinkapp/core/common/enums.dart';

String getInitials(String value) => value
    .toUpperCase()
    .split(' ')
    .take(2)
    .where((element) => element.isNotEmpty)
    .map((e) => e.substring(0, 1))
    .join();

final _regExpNegativeOrPositiveNumber = RegExp(r'[^.,0-9\-]');

NumberSingStatus getContainedNumberStatus(String? value) {
  if (value == null) return NumberSingStatus.unknown;

  final parts = value
      .replaceAll(
        _regExpNegativeOrPositiveNumber,
        '',
      )
      .replaceAll('.', ',')
      .split(',');
  final int? valueInt = int.tryParse(parts.firstOrNull ?? "");
  if (valueInt == null) return NumberSingStatus.unknown;

  if (valueInt < 0) return NumberSingStatus.negative;

  return NumberSingStatus.positive;
}
