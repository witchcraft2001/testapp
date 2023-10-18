class ApiTasksSBSResult {
  final int id;
  final bool? result;
  final String rejectReason;

  const ApiTasksSBSResult({
    required this.id,
    this.result,
    this.rejectReason = '',
  });
}
