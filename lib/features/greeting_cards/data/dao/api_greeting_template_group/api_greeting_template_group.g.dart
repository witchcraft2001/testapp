// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_greeting_template_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiGreetingTemplateGroupDaoImpl _$$ApiGreetingTemplateGroupDaoImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiGreetingTemplateGroupDaoImpl(
      id: json['id'] as String,
      blocks: (json['blocks'] as List<dynamic>?)
              ?.map((e) => ApiGreetingTemplateGroupBlockDao.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const <ApiGreetingTemplateGroupBlockDao>[],
      sortId: json['sort_id'] as int,
    );

Map<String, dynamic> _$$ApiGreetingTemplateGroupDaoImplToJson(
        _$ApiGreetingTemplateGroupDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'blocks': instance.blocks,
      'sort_id': instance.sortId,
    };
