// Project imports:
import 'package:terralinkapp/core/services/user_service/user.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';

class UserUseCaseParams implements UseCaseParams {
  const UserUseCaseParams(this.user);

  final User user;
}
