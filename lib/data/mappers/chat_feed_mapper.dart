// Project imports:
import 'package:terralinkapp/data/models/responses/chat_feed_response.dart';
import 'package:terralinkapp/domain/chat_feed.dart';

extension ChatFeedMapper on ChatFeedResponse {
  ChatFeed toDomain() {
    return ChatFeed(id, avatar, name, lastMessage, lastMessageTime, unreadMessagesCount);
  }
}
