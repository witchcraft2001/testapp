// Project imports:
import 'package:terralinkapp/core/extensions/enum_extensions.dart';
import 'package:terralinkapp/features/business_cards/data/dao/business_card_dao.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card_locale.dart';

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
