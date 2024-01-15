// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_story_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiStoryDaoImpl _$$ApiStoryDaoImplFromJson(Map<String, dynamic> json) =>
    _$ApiStoryDaoImpl(
      id: json['id'] as String,
      blocks: (json['blocks'] as List<dynamic>?)
              ?.map((e) => ApiStoryBlockDao.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ApiStoryBlockDao>[],
      sortId: json['sort_id'] as int,
    );

Map<String, dynamic> _$$ApiStoryDaoImplToJson(_$ApiStoryDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'blocks': instance.blocks,
      'sort_id': instance.sortId,
    };
