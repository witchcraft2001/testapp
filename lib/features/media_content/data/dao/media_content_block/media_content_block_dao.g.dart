// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_content_block_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaContentBlockTitleDaoImpl _$$MediaContentBlockTitleDaoImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaContentBlockTitleDaoImpl(
      id: json['id'] as String,
      parentId: json['story'] as String,
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

_$MediaContentBlockSubtitleDaoImpl _$$MediaContentBlockSubtitleDaoImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaContentBlockSubtitleDaoImpl(
      id: json['id'] as String,
      parentId: json['story'] as String,
      subtitle: json['subtitle'] as String? ?? '',
      sortId: json['sort_id'] as int,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MediaContentBlockSubtitleDaoImplToJson(
        _$MediaContentBlockSubtitleDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.parentId,
      'subtitle': instance.subtitle,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

_$MediaContentBlockMarkedSubtitleDaoImpl
    _$$MediaContentBlockMarkedSubtitleDaoImplFromJson(
            Map<String, dynamic> json) =>
        _$MediaContentBlockMarkedSubtitleDaoImpl(
          id: json['id'] as String,
          parentId: json['story'] as String,
          subtitle: json['subtitle'] as String? ?? '',
          sortId: json['sort_id'] as int,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$MediaContentBlockMarkedSubtitleDaoImplToJson(
        _$MediaContentBlockMarkedSubtitleDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.parentId,
      'subtitle': instance.subtitle,
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

_$MediaContentBlockSvgDaoImpl _$$MediaContentBlockSvgDaoImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaContentBlockSvgDaoImpl(
      id: json['id'] as String,
      parentId: json['story'] as String,
      image: json['image'] as String,
      sortId: json['sort_id'] as int,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MediaContentBlockSvgDaoImplToJson(
        _$MediaContentBlockSvgDaoImpl instance) =>
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
          parentId: json['story'] as String,
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

_$MediaContentBlockSubscribeButtonDaoImpl
    _$$MediaContentBlockSubscribeButtonDaoImplFromJson(
            Map<String, dynamic> json) =>
        _$MediaContentBlockSubscribeButtonDaoImpl(
          id: json['id'] as String,
          parentId: json['story'] as String,
          media: $enumDecode(_$MediaPlatformDaoEnumMap, json['media']),
          link: json['link'] as String,
          sortId: json['sort_id'] as int,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$MediaContentBlockSubscribeButtonDaoImplToJson(
        _$MediaContentBlockSubscribeButtonDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.parentId,
      'media': _$MediaPlatformDaoEnumMap[instance.media]!,
      'link': instance.link,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

const _$MediaPlatformDaoEnumMap = {
  MediaPlatformDao.telegram: 'telegram',
  MediaPlatformDao.youtube: 'youtube',
};

_$MediaContentBlockGroupDaoImpl _$$MediaContentBlockGroupDaoImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaContentBlockGroupDaoImpl(
      id: json['id'] as String,
      parentId: json['story'] as String,
      child:
          MediaContentBlockDao.fromJson(json['child'] as Map<String, dynamic>),
      sortId: json['sort_id'] as int,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MediaContentBlockGroupDaoImplToJson(
        _$MediaContentBlockGroupDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.parentId,
      'child': instance.child,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

_$MediaContentBlockNumberedListDaoImpl
    _$$MediaContentBlockNumberedListDaoImplFromJson(
            Map<String, dynamic> json) =>
        _$MediaContentBlockNumberedListDaoImpl(
          id: json['id'] as String,
          blocks: (json['blocks'] as List<dynamic>)
              .map((e) =>
                  MediaContentBlockDao.fromJson(e as Map<String, dynamic>))
              .toList(),
          parentId: json['story'] as String,
          sortId: json['sort_id'] as int,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$MediaContentBlockNumberedListDaoImplToJson(
        _$MediaContentBlockNumberedListDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'blocks': instance.blocks,
      'story': instance.parentId,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

_$MediaContentBlockListDaoImpl _$$MediaContentBlockListDaoImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaContentBlockListDaoImpl(
      id: json['id'] as String,
      blocks: (json['blocks'] as List<dynamic>)
          .map((e) => MediaContentBlockDao.fromJson(e as Map<String, dynamic>))
          .toList(),
      parentId: json['story'] as String,
      sortId: json['sort_id'] as int,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MediaContentBlockListDaoImplToJson(
        _$MediaContentBlockListDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'blocks': instance.blocks,
      'story': instance.parentId,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

_$MediaContentBlockRateDialogDaoImpl
    _$$MediaContentBlockRateDialogDaoImplFromJson(Map<String, dynamic> json) =>
        _$MediaContentBlockRateDialogDaoImpl(
          id: json['id'] as String,
          parentId: json['story'] as String,
          question: json['question'] as String? ?? '',
          sortId: json['sort_id'] as int,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$MediaContentBlockRateDialogDaoImplToJson(
        _$MediaContentBlockRateDialogDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.parentId,
      'question': instance.question,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

_$MediaContentBlockAppealDaoImpl _$$MediaContentBlockAppealDaoImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaContentBlockAppealDaoImpl(
      id: json['id'] as String,
      parentId: json['group'] as String,
      sortId: json['sort_id'] as int,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MediaContentBlockAppealDaoImplToJson(
        _$MediaContentBlockAppealDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group': instance.parentId,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

_$MediaContentBlockSignatureDaoImpl
    _$$MediaContentBlockSignatureDaoImplFromJson(Map<String, dynamic> json) =>
        _$MediaContentBlockSignatureDaoImpl(
          id: json['id'] as String,
          parentId: json['group'] as String,
          sortId: json['sort_id'] as int,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$MediaContentBlockSignatureDaoImplToJson(
        _$MediaContentBlockSignatureDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group': instance.parentId,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };
