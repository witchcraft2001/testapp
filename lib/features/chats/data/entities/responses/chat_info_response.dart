class ChatInfoResponse {
  final String id;
  final String? avatar;
  final String name;
  final bool isOnline;
  final int? serviceId;

  ChatInfoResponse(
    this.id,
    this.avatar,
    this.name,
    this.isOnline,
    this.serviceId,
  );
}
