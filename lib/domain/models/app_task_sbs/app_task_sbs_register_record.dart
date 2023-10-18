class AppTaskSBSRegisterRecord {
  final int recordID;
  final String details;
  final DateTime reportDate;
  final String hours;
  final AppTaskSBSRecordResult result;
  final String rejectReason;

  const AppTaskSBSRegisterRecord({
    required this.recordID,
    required this.details,
    required this.reportDate,
    required this.hours,
    required this.result,
    required this.rejectReason,
  });

  AppTaskSBSRegisterRecord copyWith({
    int? recordID,
    String? details,
    DateTime? reportDate,
    String? hours,
    AppTaskSBSRecordResult? result,
    String? rejectReason,
  }) =>
      AppTaskSBSRegisterRecord(
        recordID: recordID ?? this.recordID,
        details: details ?? this.details,
        reportDate: reportDate ?? this.reportDate,
        hours: hours ?? this.hours,
        result: result ?? this.result,
        rejectReason: rejectReason ?? this.rejectReason,
      );
}

enum AppTaskSBSRecordResult { approved, rejected, waiting }
