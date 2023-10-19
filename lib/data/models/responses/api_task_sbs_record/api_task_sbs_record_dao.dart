// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_task_sbs_record_dao.freezed.dart';
part 'api_task_sbs_record_dao.g.dart';

@freezed
class ApiTaskSBSRecordDao with _$ApiTaskSBSRecordDao {
  const factory ApiTaskSBSRecordDao({
    required int recordID,
    required String details,
    required DateTime reportDate,
    required String hours,
  }) = _ApiTaskSBSRecordDao;

  factory ApiTaskSBSRecordDao.fromJson(Map<String, dynamic> json) =>
      _$ApiTaskSBSRecordDaoFromJson(json);
}
