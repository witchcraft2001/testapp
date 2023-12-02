// Project imports:
import 'package:terralinkapp/features/chat/data/entities/responses/chat_feed_response.dart';
import 'package:terralinkapp/features/chat/domain/entities/chat_feed.dart';

extension ChatFeedMapper on ChatFeedResponse {
  ChatFeed toDomain() {
    return ChatFeed(id, avatar, name, lastMessage, lastMessageTime, unreadMessagesCount);
  }
}
