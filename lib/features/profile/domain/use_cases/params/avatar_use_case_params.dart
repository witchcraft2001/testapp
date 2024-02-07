// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/features/profile/domain/entities/application_file.dart';

class AvatarUseCaseParams implements UseCaseParams {
  final ApplicationFile avatar;

  AvatarUseCaseParams(this.avatar);
}
