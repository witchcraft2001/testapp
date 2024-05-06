// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';

class SendEmailUseCaseParams implements UseCaseParams {
  final String recipient;

  SendEmailUseCaseParams(this.recipient);
}
