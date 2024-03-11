// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_greeting_template_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiGreetingTemplateDaoImpl _$$ApiGreetingTemplateDaoImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiGreetingTemplateDaoImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      published: json['published'] as bool,
      access:
          $enumDecode(_$ApiGreetingTemplateDaoAccessEnumMap, json['access']),
      accessUsers: (json['access_users'] as List<dynamic>?)
              ?.map((e) => ApiGreetingTemplateUserDao.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const <ApiGreetingTemplateUserDao>[],
      region: json['region'] == null
          ? null
          : ApiRegionDao.fromJson(json['region'] as Map<String, dynamic>),
      backgroundColor: json['background_color'] as String,
      fontColor: json['font_color'] as String? ?? '',
      sortId: json['sort_id'] as int,
      groups: (json['groups'] as List<dynamic>?)
              ?.map((e) => MediaContentDao.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MediaContentDao>[],
    );

Map<String, dynamic> _$$ApiGreetingTemplateDaoImplToJson(
        _$ApiGreetingTemplateDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'published': instance.published,
      'access': _$ApiGreetingTemplateDaoAccessEnumMap[instance.access]!,
      'access_users': instance.accessUsers,
      'region': instance.region,
      'background_color': instance.backgroundColor,
      'font_color': instance.fontColor,
      'sort_id': instance.sortId,
      'groups': instance.groups,
    };

const _$ApiGreetingTemplateDaoAccessEnumMap = {
  ApiGreetingTemplateDaoAccess.open: 'open',
  ApiGreetingTemplateDaoAccess.limited: 'limited',
};
