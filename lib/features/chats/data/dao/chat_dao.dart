class ChatDao {
  static const String columnId = 'id';
  static const String columnTitle = 'title';

  final String id;
  final String title;

  ChatDao(this.id, this.title);

  ChatDao.fromMap(Map<dynamic, dynamic> map)
      : id = map[columnId],
        title = map[columnTitle];

  Map<String, dynamic> toMap() => <String, dynamic>{
        columnId: id,
        columnTitle: title,
      };
}
