// Dart imports:
import 'dart:ui';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/features/business_cards/data/use_cases/get_all_business_cards_use_case.dart';
import 'package:terralinkapp/features/business_cards/data/use_cases/remove_business_card_by_id_use_case.dart';
import 'package:terralinkapp/features/business_cards/data/use_cases/share_vcard_from_bussiness_card_use_case.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';
import 'package:terralinkapp/features/business_cards/domain/states/business_cards_list_state.dart';
import 'package:terralinkapp/generated/l10n.dart';

@injectable
class BusinessCardsListCubit extends Cubit<BusinessCardsListState> {
  final GetAllBusinessCardsUseCase _getAllBusinessCardsUseCase;
  final RemoveBusinessCardByIdUseCase _removeBusinessCardByIdUseCase;
  final ShareVCardFromBusinessCardUseCase _shareVCardFromBusinessCardUseCase;
  final LogService _logService;

  BusinessCardsListCubit(
    this._getAllBusinessCardsUseCase,
    this._removeBusinessCardByIdUseCase,
    this._shareVCardFromBusinessCardUseCase,
    this._logService,
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

  Future<void> onShareClicked(BusinessCard card, Rect? sharePositionOrigin) async {
    try {
      await _shareVCardFromBusinessCardUseCase.run(card, sharePositionOrigin);
    } catch (e, stack) {
      emit(_getState().copyWith(toastMessage: S.current.somethingWasWrong));
      await _logService.recordError(e, stack);
    }
  }

  Future<void> resetToastMessage() async {
    emit(_getState().copyWith(toastMessage: ''));
  }

  ShowState _getState() {
    return (state is ShowState) ? state as ShowState : ShowState([]);
  }
}
