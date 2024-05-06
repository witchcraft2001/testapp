// Project imports:
import 'package:terralinkapp/features/chats/domain/use_cases/params/chat_use_case_params.dart';

class ChatMessageUseCaseParams extends ChatUseCaseParams {
  final String text;

  ChatMessageUseCaseParams({
    required super.chatId,
    required this.text,
  });
}
