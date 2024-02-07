// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';

class QueryUseCaseParams implements UseCaseParams {
  const QueryUseCaseParams([this.query]);

  final String? query;
}
