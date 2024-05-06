// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/chats/data/repositories/chats_repository.dart';

abstract class RequestChatsUseCase implements AsyncParamlessUseCase<void> {}

@LazySingleton(
  as: RequestChatsUseCase,
  env: [Environment.dev, Environment.prod],
)
class RequestChatsUseCaseImpl extends RequestChatsUseCase {
  final ChatsRepository _chatsRepository;

  RequestChatsUseCaseImpl(this._chatsRepository);

  @override
  Future<void> call([UseCaseParams params = const NoParams()]) async {
    await _chatsRepository.requestChats();
  }
}
