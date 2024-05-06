// Dart imports:
import 'dart:ui';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/core/use_cases/params/int_id_use_case_params.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';
import 'package:terralinkapp/features/business_cards/domain/use_cases/get_all_business_cards_use_case.dart';
import 'package:terralinkapp/features/business_cards/domain/use_cases/params/business_card_use_case_params.dart';
import 'package:terralinkapp/features/business_cards/domain/use_cases/remove_business_card_by_id_use_case.dart';
import 'package:terralinkapp/features/business_cards/domain/use_cases/share_vcard_from_bussiness_card_use_case.dart';
import 'package:terralinkapp/features/business_cards/presentation/list/cubits/business_cards_list_state.dart';
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

  Future init() async {
    await _retrieveInfo();
  }

  Future refresh() async {
    await _retrieveInfo();
  }

  Future _retrieveInfo() async {
    emit(LoadingState());
    final result = await _getAllBusinessCardsUseCase();
    emit(ShowState(result));
  }

  Future remove(int id) async {
    emit(LoadingState());
    await _removeBusinessCardByIdUseCase(IntIdUseCaseParams(id));
    await _retrieveInfo();
  }

  Future<void> share(BusinessCard card, Rect? sharePositionOrigin) async {
    try {
      await _shareVCardFromBusinessCardUseCase(
        BusinessCardShapedUseCaseParams(card, sharePositionOrigin),
      );
    } catch (e, stack) {
      emit(_getState().copyWith(toastMessage: S.current.exceptionSomethingWasWrong));
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
