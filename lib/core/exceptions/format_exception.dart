// Project imports:
import 'tl_exception.dart';

class TLFormatException extends TlException {
  const TLFormatException({
    super.type = TlExceptionType.format,
  });

  @override
  List<Object?> get props => [type];
}
