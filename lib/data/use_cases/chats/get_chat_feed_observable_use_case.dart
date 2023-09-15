// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/mappers/chat_feed_mapper.dart';
import 'package:terralinkapp/data/repositories/chats_repository.dart';
import 'package:terralinkapp/domain/chat_feed.dart';

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
    return _chatsRepository.chatListSubject.map((event) => event.map((e) => e.toDomain()).toList());
  }
}
