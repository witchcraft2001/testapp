// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/likes/common/data/repositories/likes_repository.dart';
import 'package:terralinkapp/features/likes/common/domain/use_cases/params/send_like_use_case_params.dart';

abstract class SendLikeUseCase
    implements AsyncParamfullUseCase<NotificationSendingResult, SendLikeUseCaseParams> {}

@LazySingleton(
  as: SendLikeUseCase,
  env: [Environment.dev, Environment.prod],
)
class SendLikeUseCaseImpl extends SendLikeUseCase {
  final LikesRepository _repository;

  SendLikeUseCaseImpl(this._repository);

  @override
  Future<NotificationSendingResult> call(SendLikeUseCaseParams params) async {
    final toUser = params.user?.login.split('\\').last;

    if (toUser != null) {
      final result = await _repository.send(params.content, toUser);

      return result;
    }

    return NotificationSendingResult.error;
  }
}
