class ActionValueResponse {
  final int id;
  final String result;
  final String? comment;

  ActionValueResponse(this.id, this.result, this.comment);

  ActionValueResponse.fromMappedJson(Map<String, dynamic> json)
      : id = json['id'],
        result = json['result'],
        comment = json['comment'];
}
