// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/data/use_cases/business_cards/get_all_business_cards_use_case.dart';
import 'package:terralinkapp/data/use_cases/business_cards/remove_business_card_by_id_use_case.dart';
import 'package:terralinkapp/presentation/screens/business_cards/list/business_cards_list_state.dart';

class BusinessCardsListCubit extends Cubit<BusinessCardsListState> {
  final GetAllBusinessCardsUseCase _getAllBusinessCardsUseCase;
  final RemoveBusinessCardByIdUseCase _removeBusinessCardByIdUseCase;

  BusinessCardsListCubit(
    this._getAllBusinessCardsUseCase,
    this._removeBusinessCardByIdUseCase,
  ) : super(InitState());

  Future onInit() async {
    await _retrieveInfo();
  }

  Future onRefresh() async {
    await _retrieveInfo();
  }

  Future _retrieveInfo() async {
    emit(LoadingState());
    final result = await _getAllBusinessCardsUseCase.run();
    emit(ShowState(result));
  }

  Future onRemoveClicked(int id) async {
    emit(LoadingState());
    await _removeBusinessCardByIdUseCase.run(id);
    await _retrieveInfo();
  }
}
