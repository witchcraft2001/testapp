// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_sbs_record/api_task_sbs_record_dao.dart';

part 'api_task_sbs_consultant_dao.freezed.dart';
part 'api_task_sbs_consultant_dao.g.dart';

@freezed
class ApiTaskSBSConsultantDao with _$ApiTaskSBSConsultantDao {
  const factory ApiTaskSBSConsultantDao({
    @JsonKey(name: 'consultantSbsId') required int consultantId,
    required String name,
    required String totalHours,
    required double totalHoursDbl,
    required int hoursType,
    @JsonKey(name: 'registerRecords') required List<ApiTaskSBSRecordDao> records,
    String? login,
  }) = _ApiTaskSBSConsultantDao;

  factory ApiTaskSBSConsultantDao.fromJson(Map<String, dynamic> json) =>
      _$ApiTaskSBSConsultantDaoFromJson(json);
}
