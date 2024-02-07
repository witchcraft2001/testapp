// Project imports:
import 'tl_exception.dart';

class UnauthorizedException extends TlException {
  final String message;
  final Object? reason;

  const UnauthorizedException(
    this.message, {
    super.type = TlExceptionType.unauthorized,
    this.reason,
  });

  @override
  List<Object?> get props => [message, type, reason];
}
