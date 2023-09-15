// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/mappers/chat_info_mapper.dart';
import 'package:terralinkapp/data/repositories/chats_repository.dart';
import 'package:terralinkapp/domain/chat_info.dart';

abstract class GetChatInfoByIdUseCase {
  Future<ChatInfo> run(String id);
}

@LazySingleton(as: GetChatInfoByIdUseCase, env: [Environment.dev, Environment.prod])
class GetChatInfoByIdUseCaseImpl extends GetChatInfoByIdUseCase {
  final ChatsRepository _chatsRepository;

  GetChatInfoByIdUseCaseImpl(this._chatsRepository);

  @override
  Future<ChatInfo> run(String id) async {
    var result = await _chatsRepository.getChatInfo(id);
    
    return result.toDomain();
  }
}
