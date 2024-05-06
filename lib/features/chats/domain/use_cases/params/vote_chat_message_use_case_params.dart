// Project imports:
import 'package:terralinkapp/features/chats/domain/entities/chat_message.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_message_vote.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/params/chat_use_case_params.dart';

class VoteChatMessageUseCaseParams extends ChatUseCaseParams {
  final ChatMessage message;
  final ChatMessageVote? vote;

  VoteChatMessageUseCaseParams({
    required super.chatId,
    required this.message,
    this.vote,
  });
}
