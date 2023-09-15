// Project imports:
import 'package:terralinkapp/domain/chat_feed.dart';

sealed class ChatsState {
  const ChatsState();
}

class ChatsInit extends ChatsState {
  const ChatsInit();
}

class ChatsLoading extends ChatsState {
  const ChatsLoading();
}

class ChatsLoadingError extends ChatsState {
  final String message;

  const ChatsLoadingError(this.message);
}

class ChatsShow extends ChatsState {
  final List<ChatFeed> list;

  const ChatsShow(this.list);
}
