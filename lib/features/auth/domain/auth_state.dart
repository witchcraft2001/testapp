// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/features/region/domain/models/app_user_region.dart';

sealed class AuthState {}

class LoadingState extends AuthState {}

class NotLoggedInState extends AuthState {}

class LoggedInState extends AuthState {
  final AppUserRegion? userRegion;

  LoggedInState(this.userRegion);
}

class LoginFailed extends AuthState {
  final String message;
  final TlExceptionType type;

  LoginFailed(this.message, this.type);
}
