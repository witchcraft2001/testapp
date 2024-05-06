// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';

part 'common_state.freezed.dart';

@freezed
class CommonState<T> with _$CommonState {
  const factory CommonState.init() = _Init;
  const factory CommonState.ready(T data) = _Ready;
  const factory CommonState.error(String message, TlExceptionType type) = _Error;
}
