// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/chat/data/repositories/chats_repository.dart';

abstract class ResetNewMessagesUseCase {
  Future run(String chatId);
}

@LazySingleton(
  as: ResetNewMessagesUseCase,
  env: [Environment.dev, Environment.prod],
)
class ResetNewMessagesUseCaseImpl extends ResetNewMessagesUseCase {
  final ChatsRepository _repository;

  ResetNewMessagesUseCaseImpl(this._repository);

  @override
  Future run(String chatId) async {
    await _repository.resetUnreadMessages(chatId);
  }
}
