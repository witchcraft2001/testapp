// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_task_sbs_register_record_dao.freezed.dart';
part 'api_task_sbs_register_record_dao.g.dart';

@freezed
class ApiTaskSBSRegisterRecordDao with _$ApiTaskSBSRegisterRecordDao {
  const factory ApiTaskSBSRegisterRecordDao({
    required int recordID,
    required String details,
    required DateTime reportDate,
    required String hours,
  }) = _ApiTaskSBSRegisterRecordDao;

  factory ApiTaskSBSRegisterRecordDao.fromJson(Map<String, dynamic> json) =>
      _$ApiTaskSBSRegisterRecordDaoFromJson(json);
}
