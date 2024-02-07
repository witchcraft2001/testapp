// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/business_cards/domain/use_cases/get_vcard_from_business_card_use_case.dart';
import 'package:terralinkapp/features/business_cards/domain/use_cases/params/business_card_use_case_params.dart';

@injectable
class SaveVCardFileFromBusinessCardUseCase
    implements AsyncParamfullUseCase<String, BusinessCardUseCaseParams> {
  final GetVCardFromBusinessCardUseCase _getVCardFromBusinessCard;

  SaveVCardFileFromBusinessCardUseCase(this._getVCardFromBusinessCard);

  @override
  Future<String> call(BusinessCardUseCaseParams params) async {
    final vcard = await _getVCardFromBusinessCard(
      BusinessCardVersionedUseCaseParams(params.card, true),
    );
    final file = File(await _getFilename());

    await file.writeAsString(vcard, flush: true);

    return file.path;
  }

  Future<String> _getFilename() async {
    final directory = await getApplicationDocumentsDirectory();

    return '${directory.path}/vcard.vcf';
  }
}
