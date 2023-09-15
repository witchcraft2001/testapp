// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/repositories/chats_repository.dart';
import 'package:terralinkapp/domain/chat_message.dart';

abstract class GetAllMessagesByChatIdUseCase {
  Future<List<ChatMessage>> run(String id);
}

@LazySingleton(as: GetAllMessagesByChatIdUseCase, env: [Environment.dev, Environment.prod])
class GetAllMessagesByChatIdUseCaseImpl extends GetAllMessagesByChatIdUseCase {
  final ChatsRepository _chatsRepository;

  GetAllMessagesByChatIdUseCaseImpl(this._chatsRepository);

  @override
  Future<List<ChatMessage>> run(String id) async {
    return await _chatsRepository.getMessagesByChatId(id);
  }
}
