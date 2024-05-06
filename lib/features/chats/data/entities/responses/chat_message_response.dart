// Project imports:
import 'package:terralinkapp/features/chats/data/entities/responses/menu_chat_message_response.dart';
import 'form_message_response.dart';

class ChatMessageResponse {
  final String clientMessageId;
  final String? messageId;
  final String chatId;
  final String username;
  final bool isMine;
  final bool isUnread;
  final String text;
  final DateTime dateTime;
  final List<MenuChatMessageResponse> menu;
  final FormMessageResponse? form;
  final String? activeButton;
  final bool isNeedVote;
  final String? vote;
  final String? voteId;

  ChatMessageResponse({
    required this.clientMessageId,
    this.messageId,
    required this.chatId,
    required this.username,
    required this.isMine,
    required this.isUnread,
    required this.text,
    required this.dateTime,
    this.menu = const [],
    this.form,
    this.activeButton,
    required this.isNeedVote,
    this.vote,
    this.voteId,
  });

  ChatMessageResponse copy({
    String? clientMessageId,
    String? messageId,
    String? chatId,
    String? username,
    bool? isMine,
    bool? isUnread,
    String? text,
    DateTime? dateTime,
    List<MenuChatMessageResponse>? menu,
    FormMessageResponse? form,
    String? activeButton,
    bool? isNeedVote,
    String? vote,
    String? voteId,
  }) =>
      ChatMessageResponse(
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
        isNeedVote: isNeedVote ?? this.isNeedVote,
        vote: vote ?? this.vote,
        voteId: voteId ?? this.voteId,
      );
}
