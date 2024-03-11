// Flutter imports:
import 'package:flutter/rendering.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/features/greeting_cards/presentation/cubits/greeting_cards_ready_data.dart';

class GreetingCardsUseCaseParams implements UseCaseParams {
  final String attachmentPath;
  final GreetingCardsReadyData data;

  GreetingCardsUseCaseParams({
    required this.attachmentPath,
    required this.data,
  });
}

class GreetingCardsSharedUseCaseParams extends GreetingCardsUseCaseParams {
  final Rect? sharePosition;

  GreetingCardsSharedUseCaseParams({
    required super.attachmentPath,
    required super.data,
    this.sharePosition,
  });
}
