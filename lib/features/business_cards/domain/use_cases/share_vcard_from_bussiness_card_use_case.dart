// Package imports:
import 'package:injectable/injectable.dart';
import 'package:share_plus/share_plus.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/business_cards/domain/use_cases/params/business_card_use_case_params.dart';
import 'package:terralinkapp/features/business_cards/domain/use_cases/save_vcard_file_from_business_card_use_case.dart';

@injectable
class ShareVCardFromBusinessCardUseCase
    implements AsyncParamfullUseCase<void, BusinessCardShapedUseCaseParams> {
  final SaveVCardFileFromBusinessCardUseCase _saveVCardFileFromBusinessCardUseCase;

  ShareVCardFromBusinessCardUseCase(this._saveVCardFileFromBusinessCardUseCase);

  @override
  Future<void> call(BusinessCardShapedUseCaseParams params) async {
    final filename = await _saveVCardFileFromBusinessCardUseCase(params);
    final file = XFile(filename);

    await Share.shareXFiles(
      [file],
      text: '${params.card.firstName} ${params.card.lastName}',
      sharePositionOrigin: params.sharePosition,
    );
  }
}
