// Project imports:
import 'package:terralinkapp/features/chat/data/dao/chat_message_dao.dart';
import 'package:terralinkapp/features/chat/data/entities/requests/action_request.dart';
import 'package:terralinkapp/features/chat/data/entities/responses/chat_message_response.dart';
import 'package:terralinkapp/features/chat/data/mappers/form_message_mapper.dart';
import 'package:terralinkapp/features/chat/data/mappers/menu_chat_message_mapper.dart';
import 'package:terralinkapp/features/chat/domain/entities/chat_message.dart';

extension ChatMessageResponseExtensions on ChatMessageResponse {
  ChatMessage toDomain() => ChatMessage(
        clientMessageId: clientMessageId,
        messageId: messageId,
        username: username,
        text: text,
        dateTime: dateTime,
        isMine: isMine,
        isUnread: isUnread,
        menu: menu.map((e) => e.toDomain()).toList(),
        activeButton: activeButton,
        chatId: chatId,
        form: form?.toDomain(),
      );

  SendMessageActionRequest toActionRequest() => SendMessageActionRequest(clientMessageId, chatId, text);
}

extension ChatMessageExtensions on ChatMessage {
  ChatMessageDao toDao() => ChatMessageDao(
        clientMessageId: clientMessageId,
        messageId: messageId,
        chatId: chatId,
        username: username,
        isMine: isMine,
        isUnread: isUnread,
        text: text,
        dateTime: dateTime.millisecondsSinceEpoch,
        readDateTime: readDateTime?.millisecondsSinceEpoch,
      );

  SendMessageActionRequest toActionRequest() => SendMessageActionRequest(clientMessageId, chatId, text);
}

extension ChatMessageDaoExtensions on ChatMessageDao {
  ChatMessage toDomain() => ChatMessage(
        clientMessageId: clientMessageId,
        messageId: messageId,
        chatId: chatId,
        username: username,
        isMine: isMine,
        isUnread: isUnread,
        text: text,
        dateTime: DateTime.fromMillisecondsSinceEpoch(dateTime),
        menu: List.empty(),
        readDateTime: readDateTime != null ? DateTime.fromMillisecondsSinceEpoch(readDateTime!) : null,
      );
}
