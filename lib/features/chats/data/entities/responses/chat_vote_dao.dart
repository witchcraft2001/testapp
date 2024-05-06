class ChatVoteDao {
  String id;

  ChatVoteDao(
    this.id,
  );

  // Бэк отдает в качестве id тип int
  ChatVoteDao.fromJson(Map<String, dynamic> json) : id = json['vote_id'].toString();
}
