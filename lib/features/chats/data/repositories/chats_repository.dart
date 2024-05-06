// Project imports:
import 'package:terralinkapp/features/chats/data/entities/requests/form_request.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_feed.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_info.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_message.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_message_vote.dart';

abstract class ChatsRepository {
  Future<void> requestChats();
  Future<List<ChatFeed>> getAllChats();
  Future<List<ChatFeed>> getChatsWithUnreadMessages();
  Future<ChatInfo> getChatInfo(String id);
  Future<List<ChatMessage>> getMessagesByChatId(String id);

  Future<void> sendMessage(String chatId, String text);
  Future<void> sendMenuItem(String chatId, String menuId, String value);
  Future<void> sendForm(String chatId, FormRequest form);

  Future<void> vote(String chatId, ChatMessage message, ChatMessageVote? vote);

  Future<void> removeMessageById(String chatId, String clientMessageId);

  Stream<List<ChatFeed>> get chatListStream;
  Stream<String> get chatMessagesUpdatesStream;

  Future<void> resetUnreadMessages(String chatId);

  Future<void> logoutUser();
  Future<void> loginUser();

  Future<void> clearHistory();
  Future<void> clearHistoryAndLogout();
}
