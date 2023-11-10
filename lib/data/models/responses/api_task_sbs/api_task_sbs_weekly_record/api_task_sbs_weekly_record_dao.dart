// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_task_sbs_weekly_record_dao.freezed.dart';
part 'api_task_sbs_weekly_record_dao.g.dart';

@freezed
class ApiTaskSbsWeeklyRecordDao with _$ApiTaskSbsWeeklyRecordDao {
  const factory ApiTaskSbsWeeklyRecordDao({
    @JsonKey(name: 'recordID') required int recordId,
    required String details,
    required DateTime reportDate,
    required String hours,
  }) = _ApiTaskSbsWeeklyRecordDao;

  factory ApiTaskSbsWeeklyRecordDao.fromJson(Map<String, dynamic> json) =>
      _$ApiTaskSbsWeeklyRecordDaoFromJson(json);
}
