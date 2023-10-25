// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_settings_preset_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiSettingsPresetDao _$ApiSettingsPresetDaoFromJson(
        Map<String, dynamic> json) =>
    ApiSettingsPresetDao(
      name: json['name'] as String,
      newsApiBaseUrl: json['news_api_base_url'] as String,
      tasksEasApiBaseUrl: json['tasks_eas_api_base_url'] as String,
      tasksSbsApiBaseUrl: json['tasks_sbs_api_base_url'] as String,
      wsUrl: json['ws_url'] as String,
      msalTenantId: json['msal_tenant_id'] as String,
      msalClientId: json['msal_client_id'] as String,
      msalScope: json['msal_scope'] as String,
    );

Map<String, dynamic> _$ApiSettingsPresetDaoToJson(
        ApiSettingsPresetDao instance) =>
    <String, dynamic>{
      'name': instance.name,
      'news_api_base_url': instance.newsApiBaseUrl,
      'tasks_eas_api_base_url': instance.tasksEasApiBaseUrl,
      'tasks_sbs_api_base_url': instance.tasksSbsApiBaseUrl,
      'ws_url': instance.wsUrl,
      'msal_tenant_id': instance.msalTenantId,
      'msal_client_id': instance.msalClientId,
      'msal_scope': instance.msalScope,
    };
