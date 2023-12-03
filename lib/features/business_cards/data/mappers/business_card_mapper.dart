// Project imports:
import 'package:terralinkapp/features/business_cards/data/dao/business_card_dao.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';

extension BusinessCardMappers on BusinessCard {
  BusinessCardDao toDao() => BusinessCardDao(
        id,
        firstName,
        lastName,
        company,
        position,
        phone,
        email,
        locale.name,
        time.millisecondsSinceEpoch,
      );
}
