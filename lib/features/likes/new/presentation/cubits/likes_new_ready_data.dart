// Project imports:
import 'package:terralinkapp/core/utils/snacbar.dart';
import 'package:terralinkapp/features/users/domain/entities/api_user.dart';

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
