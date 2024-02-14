// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/chat/data/repositories/chats_repository.dart';

@injectable
class ClearChatHistoryUseCase implements AsyncParamlessUseCase<void> {
  final ChatsRepository _chatsRepository;

  ClearChatHistoryUseCase(this._chatsRepository);

  @override
  Future<void> call([UseCaseParams params = const NoParams()]) {
    return _chatsRepository.clearHistory();
  }
}
