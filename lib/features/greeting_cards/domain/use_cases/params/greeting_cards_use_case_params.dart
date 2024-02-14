// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/features/greeting_cards/presentation/cubits/greeting_card_data.dart';

class GreetingCardsUseCaseParams implements UseCaseParams {
  final String attachmentPath;
  final GreetingCardData data;

  GreetingCardsUseCaseParams(this.attachmentPath, this.data);
}
