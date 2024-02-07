// Project imports:
import 'package:terralinkapp/generated/l10n.dart';

String? validateRequiredTextField(String? value) {
  if (value == null || value.isEmpty) {
    return S.current.validationRequiredComment;
  }

  return null;
}
