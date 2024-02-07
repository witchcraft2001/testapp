// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/chat/data/repositories/chats_repository.dart';
import 'package:terralinkapp/features/chat/domain/use_cases/params/chat_use_case_params.dart';

abstract class ResetNewMessagesUseCase implements AsyncParamfullUseCase<void, ChatUseCaseParams> {}

@LazySingleton(
  as: ResetNewMessagesUseCase,
  env: [Environment.dev, Environment.prod],
)
class ResetNewMessagesUseCaseImpl extends ResetNewMessagesUseCase {
  final ChatsRepository _repository;

  ResetNewMessagesUseCaseImpl(this._repository);

  @override
  Future<void> call(ChatUseCaseParams params) async {
    await _repository.resetUnreadMessages(params.chatId);
  }
}
