// // Project imports:
// import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_register_record.dart';

// class AppTaskSBSRegisterRecordResult {
//   final int projectId;
//   final int consultantId;
//   final int recordId; // ToDo 57 поменять на recordId в парсинге json
//   final AppTaskSBSRegisterRecordResultType result;
//   final String rejectReason;

//   const AppTaskSBSRegisterRecordResult({
//     required this.projectId,
//     required this.consultantId,
//     required this.recordId,
//     required this.result,
//     required this.rejectReason,
//   });

//   AppTaskSBSRegisterRecordResult copyWith({
//     int? projectId,
//     int? consultantId,
//     int? recordId,
//     AppTaskSBSRegisterRecordResultType? result,
//     String? rejectReason,
//   }) =>
//       AppTaskSBSRegisterRecordResult(
//         projectId: projectId ?? this.projectId,
//         consultantId: consultantId ?? this.consultantId,
//         recordId: recordId ?? this.recordId,
//         result: result ?? this.result,
//         rejectReason: rejectReason ?? this.rejectReason,
//       );
// }
