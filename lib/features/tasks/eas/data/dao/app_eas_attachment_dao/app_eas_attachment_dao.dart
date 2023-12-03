class AppEasAttachmentDao {
  static const String columnId = 'id';
  static const String columnName = 'name';
  static const String columnPath = 'path';
  static const String columnTaskId = 'task_id';

  final int id;
  final String taskId;
  final String name;
  final String path;

  AppEasAttachmentDao({
    required this.id,
    required this.taskId,
    required this.name,
    required this.path,
  });

  AppEasAttachmentDao.fromMap(Map<dynamic, dynamic> map)
      : id = map[columnId],
        taskId = map[columnTaskId],
        name = map[columnName],
        path = map[columnPath];

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      columnName: name,
      columnPath: path,
      columnTaskId: taskId,
    };

    if (id > 0) {
      map[columnId] = id;
    }

    return map;
  }
}
