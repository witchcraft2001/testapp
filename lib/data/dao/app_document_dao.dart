class AppDocumentDao {
  static const String columnId = 'id';
  static const String columnName = 'name';
  static const String columnToSearch = 'to_search';
  static const String columnPath = 'path';
  static const String columnDirectory = 'directory';
  static const String columnDateTime = 'time';
  static const String columnSize = 'size';
  static const String columnExtension = 'extension';

  final int id;
  final String name;
  final String toSearch;
  final String path;
  final String directory;
  final int time;
  final int size;
  final String? extension;

  AppDocumentDao({
    required this.id,
    required this.name,
    required this.toSearch,
    required this.path,
    required this.directory,
    required this.time,
    required this.size,
    this.extension,
  });

  AppDocumentDao.fromMap(Map<dynamic, dynamic> map)
      : id = map[columnId],
        name = map[columnName],
        toSearch = map[columnToSearch],
        extension = map[columnExtension],
        path = map[columnPath],
        directory = map[columnDirectory],
        time = map[columnDateTime],
        size = map[columnSize];

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      columnName: name,
      columnToSearch: toSearch,
      columnExtension: extension,
      columnPath: path,
      columnDirectory: directory,
      columnDateTime: time,
      columnSize: size,
    };

    if (id > 0) {
      map[columnId] = id;
    }

    return map;
  }
}
