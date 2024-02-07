// Flutter imports:
import 'package:flutter/rendering.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';

class BusinessCardUseCaseParams implements UseCaseParams {
  final BusinessCard card;

  BusinessCardUseCaseParams(this.card);
}

class BusinessCardVersionedUseCaseParams extends BusinessCardUseCaseParams {
  final bool isCompatibleVersion;
  BusinessCardVersionedUseCaseParams(super.card, this.isCompatibleVersion);
}

class BusinessCardShapedUseCaseParams extends BusinessCardUseCaseParams {
  final Rect? sharePositionOrigin;
  BusinessCardShapedUseCaseParams(super.card, this.sharePositionOrigin);
}
