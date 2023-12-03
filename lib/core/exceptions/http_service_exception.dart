// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';

sealed class HttpServiceException extends TlException {}

class UnauthorizedHttpException extends HttpServiceException {
  @override
  bool get stringify => false;

  @override
  List<Object?> get props => [];
}

class ConnectionErrorException extends HttpServiceException {
  @override
  bool get stringify => false;

  @override
  List<Object?> get props => [];
}

class ServerErrorHttpException extends HttpServiceException {
  @override
  bool get stringify => false;

  @override
  List<Object?> get props => [];
}

class SomeHttpException extends HttpServiceException {
  final int? statusCode;

  SomeHttpException(this.statusCode);

  @override
  List<Object?> get props => [statusCode];
}

class MethodHttpException extends HttpServiceException {
  final String message;

  MethodHttpException(this.message);

  @override
  List<Object?> get props => [message];
}
