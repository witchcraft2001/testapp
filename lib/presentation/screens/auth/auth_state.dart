sealed class AuthState {}

class InitState extends AuthState {}

class LoadingState extends AuthState {}

class NotLoggedInState extends AuthState {}

class LoggedInState extends AuthState {}

class LoginFailed extends AuthState {
  final String message;

  LoginFailed(this.message);
}
