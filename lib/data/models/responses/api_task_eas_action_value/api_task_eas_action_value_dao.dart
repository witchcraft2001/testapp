class ApiTaskEASActionValueDao {
  final int id;
  final String result;
  final String? comment;

  ApiTaskEASActionValueDao(this.id, this.result, this.comment);

  ApiTaskEASActionValueDao.fromMappedJson(Map<String, dynamic> json)
      : id = json['id'],
        result = json['result'],
        comment = json['comment'];
}
