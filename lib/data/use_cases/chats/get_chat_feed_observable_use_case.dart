// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/domain/chat_feed.dart';
import 'package:terralinkapp/domain/repositories/chats_repository.dart';

abstract class GetChatFeedObservableUseCase {
  Stream<List<ChatFeed>> run();
}

@LazySingleton(as: GetChatFeedObservableUseCase, env: [Environment.dev, Environment.prod])
class GetChatFeedObservableUseCaseImpl extends GetChatFeedObservableUseCase {
  final ChatsRepository _chatsRepository;

  GetChatFeedObservableUseCaseImpl(this._chatsRepository);

  @override
  Stream<List<ChatFeed>> run() {
    // return result.map((e) => e.toDomain()).toList();
    return _chatsRepository.chatListStream;
  }
}
