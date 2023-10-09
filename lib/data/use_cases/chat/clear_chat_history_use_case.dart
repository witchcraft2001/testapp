// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/domain/repositories/chats_repository.dart';

@injectable
class ClearChatHistoryUseCase {
  final ChatsRepository _chatsRepository;

  ClearChatHistoryUseCase(this._chatsRepository);

  Future<void> run() async => await _chatsRepository.clearHistory();
}
