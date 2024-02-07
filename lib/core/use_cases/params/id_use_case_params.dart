// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';

class IdUseCaseParams<Type> implements UseCaseParams {
  const IdUseCaseParams(this.id);

  final Type id;
}
