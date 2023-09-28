// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/domain/chat_feed.dart';
import 'package:terralinkapp/domain/repositories/chats_repository.dart';

abstract class GetChatFeedUseCase {
  Future<List<ChatFeed>> run();
}

@LazySingleton(as: GetChatFeedUseCase, env: [Environment.dev, Environment.prod])
class GetChatFeedUseCaseImpl extends GetChatFeedUseCase {
  final ChatsRepository _chatsRepository;

  GetChatFeedUseCaseImpl(this._chatsRepository);

  @override
  Future<List<ChatFeed>> run() async {
    final result = await _chatsRepository.getAllChats();

    return result;
  }
}
