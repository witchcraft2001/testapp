// Project imports:
import 'package:terralinkapp/features/chats/data/entities/responses/chat_feed_response.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_feed.dart';

extension ChatFeedMapper on ChatFeedResponse {
  ChatFeed toDomain() {
    return ChatFeed(
      id,
      avatar,
      name,
      lastMessage,
      lastMessageTime,
      unreadMessagesCount,
      serviceId,
    );
  }
}
