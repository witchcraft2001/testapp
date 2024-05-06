// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/chats/data/repositories/chats_repository.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_feed.dart';

abstract class GetChatFeedObservableUseCase implements StreamParamlessUseCase<List<ChatFeed>> {}

@LazySingleton(
  as: GetChatFeedObservableUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetChatFeedObservableUseCaseImpl extends GetChatFeedObservableUseCase {
  final ChatsRepository _chatsRepository;

  GetChatFeedObservableUseCaseImpl(this._chatsRepository);

  @override
  Stream<List<ChatFeed>> call([UseCaseParams params = const NoParams()]) {
    return _chatsRepository.chatListStream;
  }
}
