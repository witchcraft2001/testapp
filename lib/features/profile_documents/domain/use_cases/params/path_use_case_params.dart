// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';

class PathUseCaseParams implements UseCaseParams {
  PathUseCaseParams(this.path);

  PathUseCaseParams.combine(List<String> source)
      : this(
          source.reduce(
            (value, element) => value + element,
          ),
        );

  final String path;
}
