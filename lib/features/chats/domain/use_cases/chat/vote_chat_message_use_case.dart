// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/chats/data/repositories/chats_repository.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/params/vote_chat_message_use_case_params.dart';

abstract class VoteChatMessageUseCase
    implements AsyncParamfullUseCase<void, VoteChatMessageUseCaseParams> {}

@LazySingleton(
  as: VoteChatMessageUseCase,
  env: [Environment.dev, Environment.prod],
)
class VoteChatMessageUseCaseImpl extends VoteChatMessageUseCase {
  final ChatsRepository _chatsRepository;

  VoteChatMessageUseCaseImpl(this._chatsRepository);

  @override
  Future<void> call(VoteChatMessageUseCaseParams params) async {
    await _chatsRepository.vote(
      params.chatId,
      params.message,
      params.vote,
    );
  }
}
