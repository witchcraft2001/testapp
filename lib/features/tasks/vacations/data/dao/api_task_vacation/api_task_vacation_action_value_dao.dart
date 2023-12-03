class ApiTaskVacationActionValueDao {
  final int id;
  final String result;
  final String? comment;

  ApiTaskVacationActionValueDao(this.id, this.result, this.comment);

  ApiTaskVacationActionValueDao.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        result = json['result'],
        comment = json['comment'];
}
