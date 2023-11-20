class ApiTaskVacationBlockDataDao {
  final String id;
  final String title;
  final String? value;
  final int sort;

  ApiTaskVacationBlockDataDao(
    this.id,
    this.title,
    this.value,
    this.sort,
  );

  ApiTaskVacationBlockDataDao.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        value = json['value'],
        sort = json['sort'];
}
