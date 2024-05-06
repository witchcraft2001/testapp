// Project imports:
import 'package:terralinkapp/features/chats/domain/entities/menu_chat_message.dart';
import 'form_message.dart';

class ChatMessage {
  final String clientMessageId;
  final String? messageId;
  final String chatId;
  final String username;
  final String text;
  final bool isNeedVote;
  final bool isMine;
  final bool isUnread;
  final DateTime dateTime;
  final List<MenuChatMessage> menu;
  final String? activeButton;
  final FormMessage? form;
  final DateTime? readDateTime;
  final String? vote;
  final String? voteId;

  ChatMessage({
    required this.clientMessageId,
    this.messageId,
    required this.chatId,
    required this.username,
    required this.isNeedVote,
    required this.isMine,
    required this.isUnread,
    required this.text,
    required this.dateTime,
    required this.menu,
    this.activeButton,
    this.form,
    this.readDateTime,
    this.vote,
    this.voteId,
  });

  ChatMessage copyWith({
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
    bool? isNeedVote,
    String? vote,
    String? voteId,
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
        isNeedVote: isNeedVote ?? this.isNeedVote,
        vote: vote ?? this.vote,
        voteId: voteId ?? this.voteId,
      );
}
