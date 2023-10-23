class ApiTaskSBSRecordResult {
  final int id;
  final bool? result;
  final String rejectReason;

  const ApiTaskSBSRecordResult({
    required this.id,
    this.result,
    this.rejectReason = '',
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'result': result,
        'rejectReason': rejectReason,
      };
}
