class ChatFeed {
  final String id;
  final String? avatar;
  final String name;
  final String? lastMessage;
  final DateTime? lastMessageTime;
  final int unreadMessagesCount;

  ChatFeed(
    this.id,
    this.avatar,
    this.name,
    this.lastMessage,
    this.lastMessageTime,
    this.unreadMessagesCount,
  );
}
