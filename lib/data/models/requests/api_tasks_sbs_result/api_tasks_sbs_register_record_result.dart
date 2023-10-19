class ApiTasksSBSRegisterRecordResult {
  final int id;
  final bool? result;
  final String rejectReason;

  const ApiTasksSBSRegisterRecordResult({
    required this.id,
    this.result,
    this.rejectReason = '',
  });
}
