// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/core/services/user_service/user_service.dart';
import 'package:terralinkapp/core/use_cases/params/int_id_use_case_params.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card_locale.dart';
import 'package:terralinkapp/features/business_cards/domain/states/business_cards_edit_state.dart';
import 'package:terralinkapp/features/business_cards/domain/use_cases/get_business_card_by_id_use_case.dart';
import 'package:terralinkapp/features/business_cards/domain/use_cases/params/business_card_use_case_params.dart';
import 'package:terralinkapp/features/business_cards/domain/use_cases/save_business_card_use_case.dart';

class BusinessCardsEditCubit extends Cubit<BusinessCardsEditState> {
  final GetBusinessCardByIdUseCase _businessCardByIdUseCase;
  final SaveBusinessCardUseCase _saveBusinessCardUseCase;
  final UserService _userService;
  final LogService _logService;
  final int id;

  BusinessCardsEditCubit(
    this.id,
    this._businessCardByIdUseCase,
    this._userService,
    this._saveBusinessCardUseCase,
    this._logService,
  ) : super(InitState());

  Future<void> init() async {
    if (id == 0) {
      await Future.microtask(() {
        emit(EditState.getEmpty(id).copy(email: _userService.getUser()?.email));
      });
    } else {
      emit(LoadingState());

      try {
        final item = await _businessCardByIdUseCase(IntIdUseCaseParams(id));

        if (item != null) {
          final editState = EditState(
            id,
            item.firstName,
            item.lastName,
            item.company,
            item.position,
            item.phone,
            item.email,
            item.locale,
            false,
            '',
          );
          emit(editState.copy(isSaveEnabled: _checkFields(editState)));
        }
      } catch (e, stackTrace) {
        if (kDebugMode) {
          print(e);
        }
        await _logService.recordError(e, stackTrace);

        emit(ErrorState(e.toString()));
      }
    }
  }

  Future changeFirstname(String value) async {
    await _updateState(firstname: value);
  }

  Future changeLastname(String value) async {
    await _updateState(lastname: value);
  }

  Future changeCompany(String value) async {
    await _updateState(company: value);
  }

  Future changeLocale(BusinessCardLocale value) async {
    await _updateState(locale: value);
  }

  Future changePosition(String value) async {
    await _updateState(position: value);
  }

  Future changePhone(String value) async {
    await _updateState(phone: value);
  }

  Future changeEmail(String value) async {
    await _updateState(email: value);
  }

  Future _updateState({
    BusinessCardLocale? locale,
    String? firstname,
    String? lastname,
    String? company,
    String? position,
    String? phone,
    String? email,
  }) async {
    if (state is EditState) {
      return Future.microtask(() {
        final oldState = state as EditState;
        final newState = oldState.copy(
          locale: locale,
          firstname: firstname,
          lastname: lastname,
          company: company,
          position: position,
          phone: phone,
          email: email,
        );
        emit(newState.copy(
          isSaveEnabled: _checkFields(newState),
        ));
      });
    }

    // ToDo 277 здесь и в подобных местах: подумать, как изменить, возможно добавить CubitException / StateException по аналогии с RepositoryException
    throw Exception("Illegal state");
  }

  Future save() async {
    if (state is EditState) {
      final oldState = state as EditState;
      if (oldState.isSaveEnabled) {
        emit(LoadingState());
        try {
          await _saveBusinessCardUseCase(
            BusinessCardUseCaseParams(
              BusinessCard(
                id,
                oldState.firstname,
                oldState.lastname,
                oldState.company,
                oldState.position,
                oldState.phone,
                oldState.email,
                oldState.locale,
                DateTime.now(),
              ),
            ),
          );
          emit(SuccessState());
        } catch (e, stackTrace) {
          await _logService.recordError(e, stackTrace);
          emit(oldState.copy(errorMessage: e.toString()));
        }
      }
    } else {
      throw Exception("Illegal state");
    }
  }

  bool _checkFields(EditState state) {
    return state.firstname.isNotEmpty &&
        state.lastname.isNotEmpty &&
        state.phone.isNotEmpty &&
        state.email.isNotEmpty;
  }
}
