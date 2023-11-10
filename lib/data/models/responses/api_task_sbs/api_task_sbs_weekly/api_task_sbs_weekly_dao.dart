// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_weekly_consultant/api_task_sbs_weekly_consultant_dao.dart';

part 'api_task_sbs_weekly_dao.freezed.dart';
part 'api_task_sbs_weekly_dao.g.dart';

@freezed
class ApiTaskSbsWeeklyDao with _$ApiTaskSbsWeeklyDao {
  const factory ApiTaskSbsWeeklyDao({
    @JsonKey(name: 'projectSbsId') required int projectId,
    required String projectName,
    required String company,
    required String pmName,
    required String amName,
    @JsonKey(name: 'consultantsWithRecords')
    required List<ApiTaskSbsWeeklyConsultantDao> consultants,
  }) = _ApiTaskSbsWeeklyDao;

  factory ApiTaskSbsWeeklyDao.fromJson(Map<String, dynamic> json) =>
      _$ApiTaskSbsWeeklyDaoFromJson(json);
}
