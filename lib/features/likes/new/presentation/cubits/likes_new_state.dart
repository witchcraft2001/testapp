// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/core/utils/snacbar.dart';
import 'package:terralinkapp/features/users/domain/entities/api_user.dart';

part 'likes_new_state.freezed.dart';

@freezed
class LikesNewState with _$LikesNewState {
  const factory LikesNewState.loading() = _Loading;
  const factory LikesNewState.ready(LikesNewReadyData data) = _Ready;
  const factory LikesNewState.error(String message, TlExceptionType type) = _Error;
}

class LikesNewReadyData {
  final String content;
  final ApiUser? user;
  final TlSnackBarData? toast;

  const LikesNewReadyData({
    this.content = '',
    this.user,
    this.toast,
  });

  LikesNewReadyData copyWith({
    String? content,
    ApiUser? user,
    TlSnackBarData? toast,
  }) =>
      LikesNewReadyData(
        content: content ?? this.content,
        user: user ?? this.user,
        toast: toast ?? this.toast,
      );
}
