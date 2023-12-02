// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/chat/data/repositories/chats_repository.dart';

abstract class RemoveMessageByIdUseCase {
  Future run(String chatId, String clientMessageId);
}

@LazySingleton(
  as: RemoveMessageByIdUseCase,
  env: [Environment.dev, Environment.prod],
)
class RemoveMessageByIdUseCaseImpl extends RemoveMessageByIdUseCase {
  final ChatsRepository _chatsRepository;

  RemoveMessageByIdUseCaseImpl(this._chatsRepository);

  @override
  Future run(String chatId, String clientMessageId) async {
    await _chatsRepository.removeMessageById(chatId, clientMessageId);
  }
}
