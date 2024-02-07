// Dart imports:
import 'dart:ui';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/core/use_cases/params/int_id_use_case_params.dart';
import 'package:terralinkapp/features/business_cards/domain/states/business_card_show_state.dart';
import 'package:terralinkapp/features/business_cards/domain/use_cases/get_business_card_by_id_use_case.dart';
import 'package:terralinkapp/features/business_cards/domain/use_cases/get_vcard_from_business_card_use_case.dart';
import 'package:terralinkapp/features/business_cards/domain/use_cases/params/business_card_use_case_params.dart';
import 'package:terralinkapp/features/business_cards/domain/use_cases/share_vcard_from_bussiness_card_use_case.dart';
import 'package:terralinkapp/generated/l10n.dart';

@injectable
class BusinessCardShowCubit extends Cubit<BusinessCardShowState> {
  final GetBusinessCardByIdUseCase _getBusinessCardByIdUseCase;
  final ShareVCardFromBusinessCardUseCase _shareVCardFromBusinessCardUseCase;
  final GetVCardFromBusinessCardUseCase _getVCardFromBusinessCard;
  final LogService _logService;
  final int id;

  BusinessCardShowCubit(
    @factoryParam this.id,
    this._getBusinessCardByIdUseCase,
    this._logService,
    this._shareVCardFromBusinessCardUseCase,
    this._getVCardFromBusinessCard,
  ) : super(InitState());

  Future<void> init() async {
    emit(LoadingState());
    try {
      final card = await _getBusinessCardByIdUseCase(IntIdUseCaseParams(id));
      if (card != null) {
        final vcard = await _getVCardFromBusinessCard(
          BusinessCardVersionedUseCaseParams(card, false),
        );
        emit(ShowState(card, vcard));
      } else {
        emit(ErrorState(S.current.exceptionSomethingWasWrong));
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);
      emit(ErrorState(e.toString()));
    }
  }

  Future share(Rect? position) async {
    if (state is ShowState) {
      try {
        await _shareVCardFromBusinessCardUseCase(BusinessCardShapedUseCaseParams(
          (state as ShowState).item,
          position,
        ));
      } catch (e, stack) {
        await _logService.recordError(e, stack);
        emit(ErrorState(e.toString()));
      }
    }
  }
}
