// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/data/use_cases/business_cards/get_business_card_by_id_use_case.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/screens/business_cards/show/business_card_show_state.dart';

class BusinessCardShowCubit extends Cubit<BusinessCardShowState> {
  final GetBusinessCardByIdUseCase _getBusinessCardByIdUseCase;
  final LogService _logService;
  final int id;

  BusinessCardShowCubit(
    this.id,
    this._getBusinessCardByIdUseCase,
    this._logService,
  ) : super(InitState());

  Future onInit() async {
    emit(LoadingState());
    try {
      final card = await _getBusinessCardByIdUseCase.run(id);
      if (card != null) {
        emit(ShowState(card));
      } else {
        emit(ErrorState(S.current.somethingWasWrong));
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);
      emit(ErrorState(e.toString()));
    }
  }
}
