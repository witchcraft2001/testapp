// Project imports:
import 'tl_exception.dart';

class UnauthorizedException extends TlException {
  final String message;
  final Object? reason;

  UnauthorizedException(this.message, {this.reason});

  @override
  List<Object?> get props => [message, reason];
}
