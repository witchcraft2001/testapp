// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/chat/data/repositories/chats_repository.dart';
import 'package:terralinkapp/features/chat/domain/entities/chat_feed.dart';

abstract class GetChatFeedObservableUseCase {
  Stream<List<ChatFeed>> run();
}

@LazySingleton(
  as: GetChatFeedObservableUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetChatFeedObservableUseCaseImpl extends GetChatFeedObservableUseCase {
  final ChatsRepository _chatsRepository;

  GetChatFeedObservableUseCaseImpl(this._chatsRepository);

  @override
  Stream<List<ChatFeed>> run() {
    // return result.map((e) => e.toDomain()).toList();
    return _chatsRepository.chatListStream;
  }
}
