class ApiTaskEasActionValueDao {
  final int id;
  final String result;
  final String? comment;

  ApiTaskEasActionValueDao(this.id, this.result, this.comment);

  ApiTaskEasActionValueDao.fromMappedJson(Map<String, dynamic> json)
      : id = json['id'],
        result = json['result'],
        comment = json['comment'];
}
