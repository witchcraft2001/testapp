// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/chat/data/repositories/chats_repository.dart';
import 'package:terralinkapp/features/chat/domain/entities/chat_info.dart';

abstract class GetChatInfoByIdUseCase {
  Future<ChatInfo> run(String id);
}

@LazySingleton(
  as: GetChatInfoByIdUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetChatInfoByIdUseCaseImpl extends GetChatInfoByIdUseCase {
  final ChatsRepository _chatsRepository;

  GetChatInfoByIdUseCaseImpl(this._chatsRepository);

  @override
  Future<ChatInfo> run(String id) async {
    final ChatInfo result = await _chatsRepository.getChatInfo(id);

    return result;
  }
}
