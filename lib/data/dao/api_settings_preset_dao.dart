// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'api_settings_preset_dao.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ApiSettingsPresetDao {
  final String name;
  final String newsApiBaseUrl;
  final String tasksEasApiBaseUrl;
  final String tasksSbsApiBaseUrl;
  final String wsUrl;
  final String msalTenantId;
  final String msalClientId;
  final String msalScope;

  ApiSettingsPresetDao({
    required this.name,
    required this.newsApiBaseUrl,
    required this.tasksEasApiBaseUrl,
    required this.tasksSbsApiBaseUrl,
    required this.wsUrl,
    required this.msalTenantId,
    required this.msalClientId,
    required this.msalScope,
  });

  factory ApiSettingsPresetDao.fromJson(Map<String, dynamic> json) =>
      _$ApiSettingsPresetDaoFromJson(json);
}
