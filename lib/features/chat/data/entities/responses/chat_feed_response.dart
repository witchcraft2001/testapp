class ChatFeedResponse {
  String id;
  String? avatar;
  String name;
  String? lastMessage;
  DateTime? lastMessageTime;
  int unreadMessagesCount;

  ChatFeedResponse(
    this.id,
    this.avatar,
    this.name,
    this.lastMessage,
    this.lastMessageTime,
    this.unreadMessagesCount,
  );
}
