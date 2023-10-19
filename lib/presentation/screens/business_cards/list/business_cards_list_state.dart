// Project imports:
import 'package:terralinkapp/domain/business_card.dart';

sealed class BusinessCardsListState {}

class InitState extends BusinessCardsListState {}

class LoadingState extends BusinessCardsListState {}

class ShowState extends BusinessCardsListState {
  final List<BusinessCard> items;
  final String toastMessage;

  ShowState(this.items, {this.toastMessage = ''});

  ShowState copyWith({
    List<BusinessCard>? items,
    String? toastMessage,
  }) =>
      ShowState(items ?? this.items, toastMessage: toastMessage ?? this.toastMessage);
}
