// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';

class SearchUseCaseParams implements UseCaseParams {
  const SearchUseCaseParams([this.search]);

  final String? search;
}
