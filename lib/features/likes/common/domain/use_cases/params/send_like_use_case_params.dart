// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/features/users/domain/entities/api_user.dart';

class SendLikeUseCaseParams implements UseCaseParams {
  final String content;
  final ApiUser? user;

  SendLikeUseCaseParams(this.content, this.user);
}
