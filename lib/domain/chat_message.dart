// Project imports:
import 'package:terralinkapp/domain/menu_chat_message.dart';
import 'form_message.dart';

class ChatMessage {
  final String clientMessageId;
  final String? messageId;
  final String chatId;
  final String username;
  final String text;
  final bool isMine;
  final bool isUnread;
  final DateTime dateTime;
  final List<MenuChatMessage> menu;
  final String? activeButton;
  final FormMessage? form;
  final DateTime? readDateTime;

  ChatMessage({
    required this.clientMessageId,
    this.messageId,
    required this.chatId,
    required this.username,
    required this.isMine,
    required this.isUnread,
    required this.text,
    required this.dateTime,
    required this.menu,
    this.activeButton,
    this.form,
    this.readDateTime,
  });

  ChatMessage copy({
    String? clientMessageId,
    String? messageId,
    String? chatId,
    String? username,
    bool? isMine,
    bool? isUnread,
    String? text,
    DateTime? dateTime,
    List<MenuChatMessage>? menu,
    FormMessage? form,
    String? activeButton,
    DateTime? readDateTime,
  }) =>
      ChatMessage(
        clientMessageId: clientMessageId ?? this.clientMessageId,
        messageId: messageId ?? this.messageId,
        chatId: chatId ?? this.chatId,
        username: username ?? this.username,
        isMine: isMine ?? this.isMine,
        isUnread: isUnread ?? this.isUnread,
        text: text ?? this.text,
        dateTime: dateTime ?? this.dateTime,
        menu: menu ?? this.menu,
        form: form ?? this.form,
        activeButton: activeButton ?? this.activeButton,
        readDateTime: readDateTime ?? this.readDateTime,
      );
}
