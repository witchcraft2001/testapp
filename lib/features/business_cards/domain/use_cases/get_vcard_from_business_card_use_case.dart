// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/services/converters/businesscard_to_vcard_converter.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/business_cards/domain/use_cases/params/business_card_use_case_params.dart';

@injectable
class GetVCardFromBusinessCardUseCase
    implements AsyncParamfullUseCase<String, BusinessCardVersionedUseCaseParams> {
  final BusinessCardToVCardConverter _businessCardToVCardConverter;

  GetVCardFromBusinessCardUseCase(this._businessCardToVCardConverter);

  @override
  Future<String> call(BusinessCardVersionedUseCaseParams params) async {
    return _businessCardToVCardConverter.toVCard(
      card: params.card,
      version: params.isCompatibleVersion ? VCardVersion.v21 : VCardVersion.v30,
    );
  }
}
