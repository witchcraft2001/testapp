class ChatFeedResponse {
  String id;
  String? avatar;
  String name;
  String? lastMessage;
  DateTime? lastMessageTime;
  int unreadMessagesCount;
  int? serviceId;

  ChatFeedResponse(
    this.id,
    this.avatar,
    this.name,
    this.lastMessage,
    this.lastMessageTime,
    this.unreadMessagesCount,
    this.serviceId,
  );
}
