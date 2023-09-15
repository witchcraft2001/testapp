// Project imports:
import 'package:terralinkapp/domain/business_card.dart';

sealed class BusinessCardsListState {}

class InitState extends BusinessCardsListState {}

class LoadingState extends BusinessCardsListState {}

class ShowState extends BusinessCardsListState {
  final List<BusinessCard> items;

  ShowState(this.items);
}
