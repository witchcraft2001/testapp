// Dart imports:
import 'dart:ui';

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:share_plus/share_plus.dart';

// Project imports:
import 'package:terralinkapp/features/business_cards/data/use_cases/save_vcard_file_from_business_card_use_case.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';

@injectable
class ShareVCardFromBusinessCardUseCase {
  final SaveVCardFileFromBusinessCardUseCase _saveVCardFileFromBusinessCardUseCase;

  ShareVCardFromBusinessCardUseCase(this._saveVCardFileFromBusinessCardUseCase);

  Future<void> run(BusinessCard card, Rect? sharePositionOrigin) async {
    final filename = await _saveVCardFileFromBusinessCardUseCase.run(card);
    final file = XFile(filename);
    await Share.shareXFiles(
      [file],
      text: '${card.firstName} ${card.lastName}',
      sharePositionOrigin: sharePositionOrigin,
    );
  }
}
