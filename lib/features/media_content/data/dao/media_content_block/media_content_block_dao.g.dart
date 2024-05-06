// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_content_block_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaContentBlockTitleDaoImpl _$$MediaContentBlockTitleDaoImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaContentBlockTitleDaoImpl(
      id: json['id'] as String,
      parentId: _readGroup(json, 'story') as String,
      title: json['title'] as String? ?? '',
      sortId: json['sort_id'] as int,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MediaContentBlockTitleDaoImplToJson(
        _$MediaContentBlockTitleDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.parentId,
      'title': instance.title,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

_$MediaContentBlockTextFieldDaoImpl
    _$$MediaContentBlockTextFieldDaoImplFromJson(Map<String, dynamic> json) =>
        _$MediaContentBlockTextFieldDaoImpl(
          id: json['id'] as String,
          parentId: _readGroup(json, 'story') as String,
          content: json['content'] as String? ?? '',
          sortId: json['sort_id'] as int,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$MediaContentBlockTextFieldDaoImplToJson(
        _$MediaContentBlockTextFieldDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.parentId,
      'content': instance.content,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

_$MediaContentBlockImageDaoImpl _$$MediaContentBlockImageDaoImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaContentBlockImageDaoImpl(
      id: json['id'] as String,
      parentId: _readGroup(json, 'story') as String,
      image: json['image'] as String?,
      sortId: json['sort_id'] as int,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MediaContentBlockImageDaoImplToJson(
        _$MediaContentBlockImageDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.parentId,
      'image': instance.image,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

_$MediaContentBlockLinkButtonDaoImpl
    _$$MediaContentBlockLinkButtonDaoImplFromJson(Map<String, dynamic> json) =>
        _$MediaContentBlockLinkButtonDaoImpl(
          id: json['id'] as String,
          parentId: _readGroup(json, 'story') as String,
          link: json['link'] as String,
          title: json['button_title'] as String,
          sortId: json['sort_id'] as int,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$MediaContentBlockLinkButtonDaoImplToJson(
        _$MediaContentBlockLinkButtonDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.parentId,
      'link': instance.link,
      'button_title': instance.title,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

_$MediaContentBlockAppealDaoImpl _$$MediaContentBlockAppealDaoImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaContentBlockAppealDaoImpl(
      id: json['id'] as String,
      parentId: _readGroup(json, 'story') as String,
      sortId: json['sort_id'] as int,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MediaContentBlockAppealDaoImplToJson(
        _$MediaContentBlockAppealDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.parentId,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

_$MediaContentBlockSignatureDaoImpl
    _$$MediaContentBlockSignatureDaoImplFromJson(Map<String, dynamic> json) =>
        _$MediaContentBlockSignatureDaoImpl(
          id: json['id'] as String,
          parentId: _readGroup(json, 'story') as String,
          sortId: json['sort_id'] as int,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$MediaContentBlockSignatureDaoImplToJson(
        _$MediaContentBlockSignatureDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.parentId,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };
