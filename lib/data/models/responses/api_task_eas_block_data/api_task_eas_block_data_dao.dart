class ApiTaskEASBlockDataDao {
  final String id;
  final String title;
  final String value;
  final int sort;

  ApiTaskEASBlockDataDao(
    this.id,
    this.title,
    this.value,
    this.sort,
  );

  ApiTaskEASBlockDataDao.fromMappedJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        value = json['value'] ?? '',
        sort = json['sort'];
}
