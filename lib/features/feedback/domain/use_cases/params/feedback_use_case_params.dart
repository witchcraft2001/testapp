// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';

class FeedbackUseCaseParams implements UseCaseParams {
  FeedbackUseCaseParams(this.message);

  final String message;
}
