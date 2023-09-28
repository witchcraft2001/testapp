// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_story_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiStoryDao _$$_ApiStoryDaoFromJson(Map<String, dynamic> json) =>
    _$_ApiStoryDao(
      id: json['id'] as String,
      blocks: (json['blocks'] as List<dynamic>?)
              ?.map((e) => ApiStoryBlockDao.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ApiStoryBlockDao>[],
      sortId: json['sort_id'] as int,
    );

Map<String, dynamic> _$$_ApiStoryDaoToJson(_$_ApiStoryDao instance) =>
    <String, dynamic>{
      'id': instance.id,
      'blocks': instance.blocks,
      'sort_id': instance.sortId,
    };
