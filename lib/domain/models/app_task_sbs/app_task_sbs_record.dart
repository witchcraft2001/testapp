class AppTaskSBSRecord {
  final int projectId;
  final int consultantId;
  final int recordId;
  final String details;
  final DateTime reportDate;
  final String hours;
  final AppTaskSBSRegisterRecordResultType result;
  final String rejectReason;

  const AppTaskSBSRecord({
    required this.projectId,
    required this.consultantId,
    required this.recordId,
    required this.details,
    required this.reportDate,
    required this.hours,
    required this.result,
    required this.rejectReason,
  });

  AppTaskSBSRecord copyWith({
    int? projectId,
    int? consultantId,
    int? recordId,
    String? details,
    DateTime? reportDate,
    String? hours,
    AppTaskSBSRegisterRecordResultType? result,
    String? rejectReason,
  }) =>
      AppTaskSBSRecord(
        projectId: projectId ?? this.projectId,
        consultantId: consultantId ?? this.consultantId,
        recordId: recordId ?? this.recordId,
        details: details ?? this.details,
        reportDate: reportDate ?? this.reportDate,
        hours: hours ?? this.hours,
        result: result ?? this.result,
        rejectReason: rejectReason ?? this.rejectReason,
      );
}

enum AppTaskSBSRegisterRecordResultType { approved, rejected, waiting }
