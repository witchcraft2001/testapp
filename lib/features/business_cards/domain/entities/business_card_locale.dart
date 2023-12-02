// Project imports:
import 'package:terralinkapp/generated/l10n.dart';

enum BusinessCardLocale {
  ru, global;

  @override
  String toString() => value;
}

extension BusinessCardLocaleExtensions on BusinessCardLocale {
  String get value {
    switch (this) {
      case BusinessCardLocale.ru: return S.current.cardLocaleRu;
      default: return S.current.cardLocaleGlobal;
    }
  }
}
