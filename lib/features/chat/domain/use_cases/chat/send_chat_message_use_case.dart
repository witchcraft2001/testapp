// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/chat/data/repositories/chats_repository.dart';
import 'package:terralinkapp/features/chat/domain/use_cases/params/chat_message_use_case_params.dart';

abstract class SendChatMessageUseCase
    implements AsyncParamfullUseCase<void, ChatMessageUseCaseParams> {}

@LazySingleton(
  as: SendChatMessageUseCase,
  env: [Environment.dev, Environment.prod],
)
class SendChatMessageUseCaseImpl extends SendChatMessageUseCase {
  final ChatsRepository _chatsRepository;

  SendChatMessageUseCaseImpl(this._chatsRepository);

  @override
  Future<void> call(ChatMessageUseCaseParams params) async {
    await _chatsRepository.sendMessage(params.chatId, params.text);
  }
}
