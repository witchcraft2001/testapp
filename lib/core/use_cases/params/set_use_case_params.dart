// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';

class SetUseCaseParams<Type> implements UseCaseParams {
  SetUseCaseParams(this.collection);

  final Set<Type> collection;
}
