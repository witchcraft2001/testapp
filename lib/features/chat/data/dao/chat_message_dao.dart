class ChatMessageDao {
  static const String columnClientMessageId = "client_message_id";
  static const String columnMessageId = "message_id";
  static const String columnChatId = "chat_id";
  static const String columnUsername = "username";
  static const String columnIsMine = "is_mine";
  static const String columnIsUnread = "is_unread";
  static const String columnText = "text";
  static const String columnDateTime = "time";
  static const String columnReadDateTime = "readtime";

  final String clientMessageId;
  final String? messageId;
  final String chatId;
  final String username;
  final bool isMine;
  final bool isUnread;
  final String text;
  final int dateTime;
  final int? readDateTime;

  ChatMessageDao({
    required this.clientMessageId,
    this.messageId,
    required this.chatId,
    required this.username,
    required this.isMine,
    required this.isUnread,
    required this.text,
    required this.dateTime,
    required this.readDateTime,
  });

  ChatMessageDao copy({
    String? clientMessageId,
    String? messageId,
    String? chatId,
    String? username,
    bool? isMine,
    bool? isUnread,
    String? text,
    int? dateTime,
    int? readDateTime,
  }) =>
      ChatMessageDao(
        clientMessageId: clientMessageId ?? this.clientMessageId,
        messageId: messageId ?? this.messageId,
        chatId: chatId ?? this.chatId,
        username: username ?? this.username,
        isMine: isMine ?? this.isMine,
        isUnread: isUnread ?? this.isUnread,
        text: text ?? this.text,
        dateTime: dateTime ?? this.dateTime,
        readDateTime: readDateTime ?? this.readDateTime,
      );

  ChatMessageDao.fromMap(Map<dynamic, dynamic> map)
      : clientMessageId = map[columnClientMessageId],
        messageId = map[columnMessageId],
        chatId = map[columnChatId],
        username = map[columnUsername],
        isMine = map[columnIsMine] == 1,
        isUnread = map[columnIsUnread] == 1,
        text = map[columnText],
        dateTime = map[columnDateTime],
        readDateTime = map[columnReadDateTime];

  Map<String, dynamic> toMap() => <String, dynamic>{
        columnClientMessageId: clientMessageId,
        columnMessageId: messageId,
        columnChatId: chatId,
        columnUsername: username,
        columnIsMine: isMine ? 1 : 0,
        columnIsUnread: isUnread ? 1 : 0,
        columnText: text,
        columnDateTime: dateTime,
        columnReadDateTime: readDateTime,
      };
}
