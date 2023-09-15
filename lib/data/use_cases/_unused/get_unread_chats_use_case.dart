// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/mappers/chat_feed_mapper.dart';
import 'package:terralinkapp/data/repositories/chats_repository.dart';
import 'package:terralinkapp/domain/chat_feed.dart';

abstract class GetUnreadChatsUseCase {
  Future<List<ChatFeed>> run();
}

@LazySingleton(as: GetUnreadChatsUseCase, env: [Environment.dev, Environment.prod])
class GetUnreadChatsUseCaseImpl extends GetUnreadChatsUseCase {
  final ChatsRepository _repository;

  GetUnreadChatsUseCaseImpl(this._repository);

  @override
  Future<List<ChatFeed>> run() async {
    return (await _repository.getChatsWithUnreadMessages()).map((e) => e.toDomain()).toList();
  }
}
