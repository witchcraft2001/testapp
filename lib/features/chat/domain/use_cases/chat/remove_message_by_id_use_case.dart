// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/chat/data/repositories/chats_repository.dart';
import 'package:terralinkapp/features/chat/domain/use_cases/params/message_use_case_params.dart';

abstract class RemoveMessageByIdUseCase
    implements AsyncParamfullUseCase<void, MessageUseCaseParams> {}

@LazySingleton(
  as: RemoveMessageByIdUseCase,
  env: [Environment.dev, Environment.prod],
)
class RemoveMessageByIdUseCaseImpl extends RemoveMessageByIdUseCase {
  final ChatsRepository _chatsRepository;

  RemoveMessageByIdUseCaseImpl(this._chatsRepository);

  @override
  Future<void> call(MessageUseCaseParams params) async {
    await _chatsRepository.removeMessageById(params.chatId, params.clientMessageId);
  }
}
