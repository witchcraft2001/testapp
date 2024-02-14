// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/features/likes/common/domain/entities/api_like.dart';

part 'likes_my_state.freezed.dart';

@freezed
class LikesMyState with _$LikesMyState {
  const factory LikesMyState.loading() = _Loading;
  const factory LikesMyState.ready(List<ApiLike> likes) = _Ready;
  const factory LikesMyState.error(String message, TlExceptionType type) = _Error;
}
