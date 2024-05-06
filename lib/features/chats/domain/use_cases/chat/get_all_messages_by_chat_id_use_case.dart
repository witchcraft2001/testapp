// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/string_id_use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/chats/data/repositories/chats_repository.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_message.dart';

abstract class GetAllMessagesByChatIdUseCase
    implements AsyncParamfullUseCase<List<ChatMessage>, StringIdUseCaseParams> {}

@LazySingleton(
  as: GetAllMessagesByChatIdUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetAllMessagesByChatIdUseCaseImpl extends GetAllMessagesByChatIdUseCase {
  final ChatsRepository _chatsRepository;

  GetAllMessagesByChatIdUseCaseImpl(this._chatsRepository);

  @override
  Future<List<ChatMessage>> call(StringIdUseCaseParams params) async {
    return await _chatsRepository.getMessagesByChatId(params.id);
  }
}
