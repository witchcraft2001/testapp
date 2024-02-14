// Project imports:
import 'package:terralinkapp/features/chat/domain/use_cases/params/chat_use_case_params.dart';

class ChatMessageUseCaseParams extends ChatUseCaseParams {
  ChatMessageUseCaseParams({required super.chatId, required this.text});

  final String text;
}
