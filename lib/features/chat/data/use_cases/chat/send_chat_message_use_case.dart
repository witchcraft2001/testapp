// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/chat/data/repositories/chats_repository.dart';

abstract class SendChatMessageUseCase {
  Future run(String chatId, String text);
}

@LazySingleton(
  as: SendChatMessageUseCase,
  env: [Environment.dev, Environment.prod],
)
class SendChatMessageUseCaseImpl extends SendChatMessageUseCase {
  final ChatsRepository _chatsRepository;

  SendChatMessageUseCaseImpl(this._chatsRepository);

  @override
  Future run(String chatId, String text) async {
    await _chatsRepository.sendMessage(chatId, text);
  }
}
