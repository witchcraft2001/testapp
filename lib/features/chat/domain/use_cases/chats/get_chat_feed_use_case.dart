// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/chat/data/repositories/chats_repository.dart';
import 'package:terralinkapp/features/chat/domain/entities/chat_feed.dart';

abstract class GetChatFeedUseCase implements AsyncParamlessUseCase<List<ChatFeed>> {}

@LazySingleton(
  as: GetChatFeedUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetChatFeedUseCaseImpl extends GetChatFeedUseCase {
  final ChatsRepository _chatsRepository;

  GetChatFeedUseCaseImpl(this._chatsRepository);

  @override
  Future<List<ChatFeed>> call([UseCaseParams params = const NoParams()]) async {
    return _chatsRepository.getAllChats();
  }
}
