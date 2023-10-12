// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_sbs_register_record/api_task_sbs_register_record_dao.dart';

part 'api_task_sbs_consultant_record_dao.freezed.dart';
part 'api_task_sbs_consultant_record_dao.g.dart';

@freezed
class ApiTaskSBSConsultantRecordDao with _$ApiTaskSBSConsultantRecordDao {
  const factory ApiTaskSBSConsultantRecordDao({
    required int consultantSbsId,
    required String name,
    required String totalHours,
    required double totalHoursDbl,
    required int hoursType,
    required List<ApiTaskSBSRegisterRecordDao> registerRecords,
    String? login,
  }) = _ApiTaskSBSConsultantRecordDao;

  factory ApiTaskSBSConsultantRecordDao.fromJson(Map<String, dynamic> json) =>
      _$ApiTaskSBSConsultantRecordDaoFromJson(json);
}
