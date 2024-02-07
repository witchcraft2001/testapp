class ApiLikesStatDao {
  final int receiveLikes;
  final int sendLikes;

  ApiLikesStatDao({
    required this.receiveLikes,
    required this.sendLikes,
  });

  ApiLikesStatDao.fromJson(Map<String, dynamic> json)
      : receiveLikes = json['receive_likes'],
        sendLikes = json['send_likes'];
}
