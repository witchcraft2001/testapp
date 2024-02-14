// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';

class MessageUseCaseParams implements UseCaseParams {
  final String chatId;
  final String clientMessageId;

  MessageUseCaseParams({
    required this.chatId,
    required this.clientMessageId,
  });
}
