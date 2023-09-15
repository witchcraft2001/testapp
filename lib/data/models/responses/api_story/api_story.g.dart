// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_story.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiStory _$$_ApiStoryFromJson(Map<String, dynamic> json) => _$_ApiStory(
      id: json['id'] as String,
      blocks: (json['blocks'] as List<dynamic>?)
              ?.map((e) => ApiStoryBlock.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ApiStoryBlock>[],
      sortId: json['sort_id'] as int,
    );

Map<String, dynamic> _$$_ApiStoryToJson(_$_ApiStory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'blocks': instance.blocks,
      'sort_id': instance.sortId,
    };
