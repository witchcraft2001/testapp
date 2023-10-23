// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_sbs_consultant/api_task_sbs_consultant_dao.dart';

part 'api_task_sbs_dao.freezed.dart';
part 'api_task_sbs_dao.g.dart';

@freezed
class ApiTaskSBSDao with _$ApiTaskSBSDao {
  const factory ApiTaskSBSDao({
    @JsonKey(name: 'projectSbsId') required int projectId,
    required String projectName,
    required String company,
    required String pmName,
    required String amName,
    @JsonKey(name: 'consultantsWithRecords') required List<ApiTaskSBSConsultantDao> consultants,
  }) = _ApiTaskSBSDao;

  factory ApiTaskSBSDao.fromJson(Map<String, dynamic> json) => _$ApiTaskSBSDaoFromJson(json);
}
