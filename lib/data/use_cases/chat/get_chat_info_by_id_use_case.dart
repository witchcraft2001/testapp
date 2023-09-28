// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/domain/chat_info.dart';
import 'package:terralinkapp/domain/repositories/chats_repository.dart';

abstract class GetChatInfoByIdUseCase {
  Future<ChatInfo> run(String id);
}

@LazySingleton(as: GetChatInfoByIdUseCase, env: [Environment.dev, Environment.prod])
class GetChatInfoByIdUseCaseImpl extends GetChatInfoByIdUseCase {
  final ChatsRepository _chatsRepository;

  GetChatInfoByIdUseCaseImpl(this._chatsRepository);

  @override
  Future<ChatInfo> run(String id) async {
    final ChatInfo result = await _chatsRepository.getChatInfo(id);

    return result;
  }
}
