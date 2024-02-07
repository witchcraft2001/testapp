// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';

class SearchPagedUseCaseParams implements UseCaseParams {
  const SearchPagedUseCaseParams({this.search, this.page});

  final String? search;
  final int? page;
}
