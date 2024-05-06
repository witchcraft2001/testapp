// Project imports:
import 'package:terralinkapp/features/chats/data/dao/chat_dao.dart';
import 'package:terralinkapp/features/chats/data/entities/responses/chat_feed_response.dart';
import 'package:terralinkapp/features/chats/data/entities/responses/chat_info_response.dart';

extension ChatMappers on ChatDao {
  ChatFeedResponse toChatFeedResponse() => ChatFeedResponse(id, null, title, null, null, 0, null);

  ChatInfoResponse toChatInfoResponse() => ChatInfoResponse(id, null, title, true, null);
}
