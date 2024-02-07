// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';

class RepositoryException extends TlException {
  final String? message;
  final int? statusCode;

  const RepositoryException({
    super.type = TlExceptionType.repoLoading,
    this.message,
    this.statusCode,
  });

  @override
  List<Object?> get props => [message, type, statusCode];
}
