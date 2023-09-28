// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/domain/chat_feed.dart';
import 'package:terralinkapp/domain/repositories/chats_repository.dart';

abstract class GetUnreadChatsUseCase {
  Future<List<ChatFeed>> run();
}

@LazySingleton(as: GetUnreadChatsUseCase, env: [Environment.dev, Environment.prod])
class GetUnreadChatsUseCaseImpl extends GetUnreadChatsUseCase {
  final ChatsRepository _repository;

  GetUnreadChatsUseCaseImpl(this._repository);

  @override
  Future<List<ChatFeed>> run() async {
    return await _repository.getChatsWithUnreadMessages();
  }
}
