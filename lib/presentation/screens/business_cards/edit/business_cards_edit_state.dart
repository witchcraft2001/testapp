// Project imports:
import 'package:terralinkapp/domain/business_card_locale.dart';

sealed class BusinessCardsEditState {}

class InitState extends BusinessCardsEditState {}

class SuccessState extends BusinessCardsEditState {}

class LoadingState extends BusinessCardsEditState {}

class ErrorState extends BusinessCardsEditState {
  final String message;

  ErrorState(this.message);
}

class EditState extends BusinessCardsEditState {
  final int id;
  final String firstname;
  final String lastname;
  final String company;
  final String position;
  final String phone;
  final String email;
  final BusinessCardLocale locale;
  final bool isSaveEnabled;
  final String errorMessage;

  EditState(
    this.id,
    this.firstname,
    this.lastname,
    this.company,
    this.position,
    this.phone,
    this.email,
    this.locale,
    this.isSaveEnabled,
    this.errorMessage,
  );

  EditState.getEmpty(this.id)
      : firstname = '',
        lastname = '',
        company = '',
        position = '',
        phone = '',
        email = '',
        locale = BusinessCardLocale.ru,
        isSaveEnabled = false,
        errorMessage = '';

  EditState copy({
    int? id,
    String? firstname,
    String? lastname,
    String? company,
    String? position,
    String? phone,
    String? email,
    BusinessCardLocale? locale,
    bool? isSaveEnabled,
    String? errorMessage,
  }) =>
      EditState(
        id ?? this.id,
        firstname ?? this.firstname,
        lastname ?? this.lastname,
        company ?? this.company,
        position ?? this.position,
        phone ?? this.phone,
        email ?? this.email,
        locale ?? this.locale,
        isSaveEnabled ?? this.isSaveEnabled,
        errorMessage ?? '',
      );
}
