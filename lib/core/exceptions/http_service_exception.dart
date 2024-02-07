// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';

sealed class HttpServiceException extends TlException {
  const HttpServiceException({required super.type});
}

class UnauthorizedHttpException extends HttpServiceException {
  const UnauthorizedHttpException({
    super.type = TlExceptionType.unauthorized,
  });

  @override
  bool get stringify => false;

  @override
  List<Object?> get props => [];
}

class ConnectionErrorException extends HttpServiceException {
  const ConnectionErrorException({
    super.type = TlExceptionType.connection,
  });

  @override
  bool get stringify => false;

  @override
  List<Object?> get props => [];
}

class ServerErrorHttpException extends HttpServiceException {
  const ServerErrorHttpException({
    super.type = TlExceptionType.externalServer,
  });

  @override
  bool get stringify => false;

  @override
  List<Object?> get props => [type];
}

class SomeHttpException extends HttpServiceException {
  final int? statusCode;

  const SomeHttpException({
    super.type = TlExceptionType.httpSome,
    this.statusCode,
  });

  @override
  List<Object?> get props => [type, statusCode];
}

class MethodHttpException extends HttpServiceException {
  final String message;

  const MethodHttpException({
    required this.message,
    super.type = TlExceptionType.httpMethod,
  });

  @override
  List<Object?> get props => [type, message];
}

class DioException extends HttpServiceException {
  final int? statusCode;

  const DioException({
    super.type = TlExceptionType.httpSome,
    this.statusCode,
  });

  @override
  List<Object?> get props => [type, statusCode];
}
