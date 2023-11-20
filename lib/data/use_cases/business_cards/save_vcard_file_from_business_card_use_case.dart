// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

// Project imports:
import 'package:terralinkapp/data/use_cases/business_cards/get_vcard_from_business_card_use_case.dart';
import 'package:terralinkapp/domain/business_card.dart';

@injectable
class SaveVCardFileFromBusinessCardUseCase {
  final GetVCardFromBusinessCardUseCase _getVCardFromBusinessCard;

  SaveVCardFileFromBusinessCardUseCase(this._getVCardFromBusinessCard);

  Future<String> run(BusinessCard card) async {
    final vcard = _getVCardFromBusinessCard.run(card, true);
    final file = File(await _getFilename());

    await file.writeAsString(vcard, flush: true);

    return file.path;
  }

  Future<String> _getFilename() async {
    final directory = await getApplicationDocumentsDirectory();

    return '${directory.path}/vcard.vcf';
  }
}
