// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_hours_type/api_task_sbs_hours_type_dao.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_weekly_record/api_task_sbs_weekly_record_dao.dart';

part 'api_task_sbs_weekly_consultant_dao.freezed.dart';
part 'api_task_sbs_weekly_consultant_dao.g.dart';

@freezed
class ApiTaskSbsWeeklyConsultantDao with _$ApiTaskSbsWeeklyConsultantDao {
  const factory ApiTaskSbsWeeklyConsultantDao({
    @JsonKey(name: 'consultantSbsId') required int consultantId,
    required String name,
    required String totalHours,
    required double totalHoursDbl,
    @JsonKey(name: 'hoursType', defaultValue: ApiTaskSbsHoursTypeDao.paid)
    required ApiTaskSbsHoursTypeDao hoursType,
    @JsonKey(name: 'registerRecords') required List<ApiTaskSbsWeeklyRecordDao> records,
    String? login,
  }) = _ApiTaskSbsWeeklyConsultantDao;

  factory ApiTaskSbsWeeklyConsultantDao.fromJson(Map<String, dynamic> json) =>
      _$ApiTaskSbsWeeklyConsultantDaoFromJson(json);
}
