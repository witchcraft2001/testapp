// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/chat/data/repositories/chats_repository.dart';

abstract class SendMenuItemChatMessageUseCase {
  Future<void> run(String chatId, String menuId, String value);
}

@LazySingleton(
  as: SendMenuItemChatMessageUseCase,
  env: [Environment.dev, Environment.prod],
)
class SendMenuItemChatMessageUseCaseImpl extends SendMenuItemChatMessageUseCase {
  final ChatsRepository _chatsRepository;

  SendMenuItemChatMessageUseCaseImpl(this._chatsRepository);

  @override
  Future<void> run(String chatId, String menuId, String value) async {
    await _chatsRepository.sendMenuItem(chatId, menuId, value);
  }
}
