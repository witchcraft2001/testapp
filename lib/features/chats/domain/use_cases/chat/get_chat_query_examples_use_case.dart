// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/chats/data/repositories/chats_repository.dart';
import 'package:terralinkapp/features/chats/domain/entities/query_examples/chat_query_example.dart';

abstract class GetChatQueryExamplesUseCase
    implements AsyncParamlessUseCase<List<ChatQueryExample>> {}

@LazySingleton(
  as: GetChatQueryExamplesUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetChatQueryExamplesUseCaseImpl extends GetChatQueryExamplesUseCase {
  final ChatsRepository _chatsRepository;

  GetChatQueryExamplesUseCaseImpl(this._chatsRepository);

  @override
  Future<List<ChatQueryExample>> call([UseCaseParams params = const NoParams()]) async {
    final examples = await _chatsRepository.getQueryExamples();

    return examples;
  }
}
