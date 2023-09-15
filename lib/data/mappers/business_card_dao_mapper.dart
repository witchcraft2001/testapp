// Project imports:
import 'package:terralinkapp/common/extensions/enum_extensions.dart';
import 'package:terralinkapp/data/dao/business_card_dao.dart';
import 'package:terralinkapp/domain/business_card.dart';
import 'package:terralinkapp/domain/business_card_locale.dart';

extension BusinessCardDaoMappers on BusinessCardDao {
  BusinessCard toDomain() => BusinessCard(
        id,
        firstName,
        lastName,
        company,
        position,
        phone,
        email,
        BusinessCardLocale.values.byNameOrElse(locale, BusinessCardLocale.global),
        DateTime.fromMillisecondsSinceEpoch(time),
      );
}
