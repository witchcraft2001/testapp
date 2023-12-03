// Project imports:
import 'package:terralinkapp/features/chat/data/entities/requests/form_request.dart';
import 'package:terralinkapp/features/chat/domain/entities/chat_feed.dart';
import 'package:terralinkapp/features/chat/domain/entities/chat_info.dart';
import 'package:terralinkapp/features/chat/domain/entities/chat_message.dart';

abstract class ChatsRepository {
  Future<List<ChatFeed>> getAllChats();
  Future<List<ChatFeed>> getChatsWithUnreadMessages();
  Future<ChatInfo> getChatInfo(String id);
  Future<List<ChatMessage>> getMessagesByChatId(String id);

  Future<void> sendMessage(String chatId, String text);
  Future<void> sendMenuItem(String chatId, String menuId, String value);
  Future<void> sendForm(String chatId, FormRequest form);

  Future<void> removeMessageById(String chatId, String clientMessageId);

  Stream<List<ChatFeed>> get chatListStream;
  Stream<String> get chatMessagesUpdatesStream;

  Future<void> resetUnreadMessages(String chatId);

  Future<void> userLoggedOut();
  Future<void> userLoggedIn();

  Future<void> clearHistory();
}
