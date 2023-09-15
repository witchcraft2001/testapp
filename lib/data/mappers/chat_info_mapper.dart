// Project imports:
import 'package:terralinkapp/data/dao/chat_dao.dart';
import 'package:terralinkapp/data/models/responses/chat_info_response.dart';
import 'package:terralinkapp/domain/chat_info.dart';

extension ChatInfoExtensions on ChatInfoResponse {
  ChatInfo toDomain() => ChatInfo(id, avatar, name, isOnline);
  ChatDao toDao() => ChatDao(id, name);
}
