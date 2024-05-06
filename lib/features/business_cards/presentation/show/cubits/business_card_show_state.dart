// Project imports:
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';

sealed class BusinessCardShowState {}

class InitState extends BusinessCardShowState {}

class LoadingState extends BusinessCardShowState {}

class ErrorState extends BusinessCardShowState {
  final String message;

  ErrorState(this.message);
}

class ShowState extends BusinessCardShowState {
  final BusinessCard item;
  final String? vCardContent;

  ShowState(this.item, this.vCardContent);
}
