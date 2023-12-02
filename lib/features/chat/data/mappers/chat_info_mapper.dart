// Project imports:
import 'package:terralinkapp/features/chat/data/dao/chat_dao.dart';
import 'package:terralinkapp/features/chat/data/entities/responses/chat_info_response.dart';
import 'package:terralinkapp/features/chat/domain/entities/chat_info.dart';

extension ChatInfoExtensions on ChatInfoResponse {
  ChatInfo toDomain() => ChatInfo(id, avatar, name, isOnline);
  ChatDao toDao() => ChatDao(id, name);
}
