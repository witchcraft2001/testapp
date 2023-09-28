// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_story_block_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiStoryBlockDao _$$_ApiStoryBlockDaoFromJson(Map<String, dynamic> json) =>
    _$_ApiStoryBlockDao(
      id: json['id'] as String,
      story: json['story'] as String,
      type: $enumDecode(_$ApiStoryBlockDaoTypeEnumMap, json['type']),
      title: json['title'] as String? ?? '',
      link: json['link'] as String? ?? '',
      content: json['content'] as String? ?? '',
      image: json['image'] as String?,
      buttonTitle: json['button_title'] as String? ?? '',
      sortId: json['sort_id'] as int,
    );

Map<String, dynamic> _$$_ApiStoryBlockDaoToJson(_$_ApiStoryBlockDao instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.story,
      'type': _$ApiStoryBlockDaoTypeEnumMap[instance.type]!,
      'title': instance.title,
      'link': instance.link,
      'content': instance.content,
      'image': instance.image,
      'button_title': instance.buttonTitle,
      'sort_id': instance.sortId,
    };

const _$ApiStoryBlockDaoTypeEnumMap = {
  ApiStoryBlockDaoType.title: 'title',
  ApiStoryBlockDaoType.text_field: 'text_field',
  ApiStoryBlockDaoType.image: 'image',
  ApiStoryBlockDaoType.link_button: 'link_button',
};
