// Package imports:
import 'package:injectable/injectable.dart';
import 'package:share_plus/share_plus.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/params/greeting_cards_use_case_params.dart';

abstract class ShareGreetingCardUseCase
    implements AsyncParamfullUseCase<void, GreetingCardsSharedUseCaseParams> {}

@LazySingleton(
  as: ShareGreetingCardUseCase,
  env: [Environment.dev, Environment.prod],
)
class ShareGreetingCardUseCaseImpl extends ShareGreetingCardUseCase {
  ShareGreetingCardUseCaseImpl();

  @override
  Future<void> call(GreetingCardsSharedUseCaseParams params) async {
    final xfile = XFile(params.attachmentPath);

    await Share.shareXFiles(
      [xfile],
      subject: params.data.subject,
      sharePositionOrigin: params.sharePosition,
    );
  }
}
