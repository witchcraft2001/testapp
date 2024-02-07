// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/likes/common/domain/entities/api_likes_stat.dart';

part 'likes_stat_state.freezed.dart';

@freezed
class LikesStatState with _$LikesStatState {
  const factory LikesStatState.loading() = _Loading;
  const factory LikesStatState.ready(ApiLikesStat data) = _Ready;
}
