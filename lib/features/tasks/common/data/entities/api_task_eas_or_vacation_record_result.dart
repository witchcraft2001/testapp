class ApiTaskEasOrVacationRecordResult {
  final int id;
  final String result;
  final String? comment;

  const ApiTaskEasOrVacationRecordResult({
    required this.id,
    required this.result,
    this.comment,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'result': result,
        'comment': comment,
      };
}
