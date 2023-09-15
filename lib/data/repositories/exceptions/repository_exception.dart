// Project imports:
import 'package:terralinkapp/common/exceptions/tl_exception.dart';

class RepositoryException extends TlException {
  final String error;
  final int? statusCode;

  RepositoryException(this.error, {this.statusCode});

  @override
  List<Object?> get props => [error, statusCode];
}
