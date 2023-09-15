// Project imports:
import 'package:terralinkapp/data/dao/chat_dao.dart';
import 'package:terralinkapp/data/models/responses/chat_feed_response.dart';
import 'package:terralinkapp/data/models/responses/chat_info_response.dart';

extension ChatMappers on ChatDao {
  ChatFeedResponse toChatFeedResponse() => ChatFeedResponse(id, null, title, null, null, 0);

  ChatInfoResponse toChatInfoResponse() => ChatInfoResponse(id, null, title, true);
}
