// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_content_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaContentDaoImpl _$$MediaContentDaoImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaContentDaoImpl(
      id: json['id'] as String,
      blocks: (json['blocks'] as List<dynamic>)
          .map((e) => MediaContentBlockDao.fromJson(e as Map<String, dynamic>))
          .toList(),
      sortId: json['sort_id'] as int,
    );

Map<String, dynamic> _$$MediaContentDaoImplToJson(
        _$MediaContentDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'blocks': instance.blocks,
      'sort_id': instance.sortId,
    };
