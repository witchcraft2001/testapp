// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_story_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiStoryBlock _$$_ApiStoryBlockFromJson(Map<String, dynamic> json) =>
    _$_ApiStoryBlock(
      id: json['id'] as String,
      story: json['story'] as String,
      type: $enumDecode(_$ApiStoryBlockTypeEnumMap, json['type']),
      title: json['title'] as String? ?? '',
      link: json['link'] as String? ?? '',
      content: json['content'] as String? ?? '',
      image: json['image'] as String?,
      buttonTitle: json['button_title'] as String? ?? '',
      sortId: json['sort_id'] as int,
    );

Map<String, dynamic> _$$_ApiStoryBlockToJson(_$_ApiStoryBlock instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.story,
      'type': _$ApiStoryBlockTypeEnumMap[instance.type]!,
      'title': instance.title,
      'link': instance.link,
      'content': instance.content,
      'image': instance.image,
      'button_title': instance.buttonTitle,
      'sort_id': instance.sortId,
    };

const _$ApiStoryBlockTypeEnumMap = {
  ApiStoryBlockType.title: 'title',
  ApiStoryBlockType.text_field: 'text_field',
  ApiStoryBlockType.image: 'image',
  ApiStoryBlockType.link_button: 'link_button',
};
