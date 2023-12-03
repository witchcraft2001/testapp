// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/services/converters/businesscard_to_vcard_converter.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';

@injectable
class GetVCardFromBusinessCardUseCase {
  final BusinessCardToVCardConverter _businessCardToVCardConverter;

  GetVCardFromBusinessCardUseCase(this._businessCardToVCardConverter);

  String run(BusinessCard card, bool isCompatibleVersion) {
    return _businessCardToVCardConverter.toVCard(
      card: card,
      version: isCompatibleVersion ? VCardVersion.v21 : VCardVersion.v30,
    );
  }
}
