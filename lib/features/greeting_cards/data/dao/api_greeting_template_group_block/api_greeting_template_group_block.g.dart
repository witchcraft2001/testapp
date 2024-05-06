// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_greeting_template_group_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiGreetingTemplateGroupBlockDaoImpl
    _$$ApiGreetingTemplateGroupBlockDaoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiGreetingTemplateGroupBlockDaoImpl(
          id: json['id'] as String,
          group: json['group'] as String,
          type: $enumDecode(
              _$ApiGreetingTemplateGroupBlockDaoTypeEnumMap, json['type']),
          title: json['title'] as String? ?? '',
          link: json['link'] as String? ?? '',
          content: json['content'] as String? ?? '',
          image: json['image'] as String?,
          buttonTitle: json['button_title'] as String? ?? '',
          sortId: json['sort_id'] as int,
        );

Map<String, dynamic> _$$ApiGreetingTemplateGroupBlockDaoImplToJson(
        _$ApiGreetingTemplateGroupBlockDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group': instance.group,
      'type': _$ApiGreetingTemplateGroupBlockDaoTypeEnumMap[instance.type]!,
      'title': instance.title,
      'link': instance.link,
      'content': instance.content,
      'image': instance.image,
      'button_title': instance.buttonTitle,
      'sort_id': instance.sortId,
    };

const _$ApiGreetingTemplateGroupBlockDaoTypeEnumMap = {
  ApiGreetingTemplateGroupBlockDaoType.signature: 'signature',
  ApiGreetingTemplateGroupBlockDaoType.text_field: 'text_field',
  ApiGreetingTemplateGroupBlockDaoType.image: 'image',
  ApiGreetingTemplateGroupBlockDaoType.appeal: 'appeal',
};
