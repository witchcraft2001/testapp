// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_content_block_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnboardingContentBlockTitleDaoImpl
    _$$OnboardingContentBlockTitleDaoImplFromJson(Map<String, dynamic> json) =>
        _$OnboardingContentBlockTitleDaoImpl(
          id: json['id'] as String,
          parentId: json['story'] as String,
          title: json['title'] as String? ?? '',
          sortId: json['sort_id'] as int,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$OnboardingContentBlockTitleDaoImplToJson(
        _$OnboardingContentBlockTitleDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.parentId,
      'title': instance.title,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

_$OnboardingContentBlockSubtitleDaoImpl
    _$$OnboardingContentBlockSubtitleDaoImplFromJson(
            Map<String, dynamic> json) =>
        _$OnboardingContentBlockSubtitleDaoImpl(
          id: json['id'] as String,
          parentId: json['story'] as String,
          subtitle: json['subtitle'] as String? ?? '',
          sortId: json['sort_id'] as int,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$OnboardingContentBlockSubtitleDaoImplToJson(
        _$OnboardingContentBlockSubtitleDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.parentId,
      'subtitle': instance.subtitle,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

_$OnboardingContentBlockMarkedSubtitleDaoImpl
    _$$OnboardingContentBlockMarkedSubtitleDaoImplFromJson(
            Map<String, dynamic> json) =>
        _$OnboardingContentBlockMarkedSubtitleDaoImpl(
          id: json['id'] as String,
          parentId: json['story'] as String,
          subtitle: json['subtitle'] as String? ?? '',
          sortId: json['sort_id'] as int,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$OnboardingContentBlockMarkedSubtitleDaoImplToJson(
        _$OnboardingContentBlockMarkedSubtitleDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.parentId,
      'subtitle': instance.subtitle,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

_$OnboardingContentBlockTextFieldDaoImpl
    _$$OnboardingContentBlockTextFieldDaoImplFromJson(
            Map<String, dynamic> json) =>
        _$OnboardingContentBlockTextFieldDaoImpl(
          id: json['id'] as String,
          parentId: _readGroup(json, 'story') as String,
          content: json['content'] as String? ?? '',
          sortId: json['sort_id'] as int,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$OnboardingContentBlockTextFieldDaoImplToJson(
        _$OnboardingContentBlockTextFieldDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.parentId,
      'content': instance.content,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

_$OnboardingContentBlockImageDaoImpl
    _$$OnboardingContentBlockImageDaoImplFromJson(Map<String, dynamic> json) =>
        _$OnboardingContentBlockImageDaoImpl(
          id: json['id'] as String,
          parentId: _readGroup(json, 'story') as String,
          image: json['image'] as String?,
          sortId: json['sort_id'] as int,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$OnboardingContentBlockImageDaoImplToJson(
        _$OnboardingContentBlockImageDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.parentId,
      'image': instance.image,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

_$OnboardingContentBlockSvgDaoImpl _$$OnboardingContentBlockSvgDaoImplFromJson(
        Map<String, dynamic> json) =>
    _$OnboardingContentBlockSvgDaoImpl(
      id: json['id'] as String,
      parentId: json['story'] as String,
      image: json['image'] as String,
      sortId: json['sort_id'] as int,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$OnboardingContentBlockSvgDaoImplToJson(
        _$OnboardingContentBlockSvgDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.parentId,
      'image': instance.image,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

_$OnboardingContentBlockLinkButtonDaoImpl
    _$$OnboardingContentBlockLinkButtonDaoImplFromJson(
            Map<String, dynamic> json) =>
        _$OnboardingContentBlockLinkButtonDaoImpl(
          id: json['id'] as String,
          parentId: json['story'] as String,
          link: json['link'] as String,
          title: json['button_title'] as String,
          sortId: json['sort_id'] as int,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$OnboardingContentBlockLinkButtonDaoImplToJson(
        _$OnboardingContentBlockLinkButtonDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.parentId,
      'link': instance.link,
      'button_title': instance.title,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

_$OnboardingContentBlockSubscribeButtonDaoImpl
    _$$OnboardingContentBlockSubscribeButtonDaoImplFromJson(
            Map<String, dynamic> json) =>
        _$OnboardingContentBlockSubscribeButtonDaoImpl(
          id: json['id'] as String,
          parentId: json['story'] as String,
          media: $enumDecode(_$OnboardingPlatformDaoEnumMap, json['media']),
          link: json['link'] as String,
          sortId: json['sort_id'] as int,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$OnboardingContentBlockSubscribeButtonDaoImplToJson(
        _$OnboardingContentBlockSubscribeButtonDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.parentId,
      'media': _$OnboardingPlatformDaoEnumMap[instance.media]!,
      'link': instance.link,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

const _$OnboardingPlatformDaoEnumMap = {
  OnboardingPlatformDao.telegram: 'telegram',
  OnboardingPlatformDao.youtube: 'youtube',
};

_$OnboardingContentBlockGroupDaoImpl
    _$$OnboardingContentBlockGroupDaoImplFromJson(Map<String, dynamic> json) =>
        _$OnboardingContentBlockGroupDaoImpl(
          id: json['id'] as String,
          parentId: json['story'] as String,
          child: OnboardingContentBlockDao.fromJson(
              json['child'] as Map<String, dynamic>),
          sortId: json['sort_id'] as int,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$OnboardingContentBlockGroupDaoImplToJson(
        _$OnboardingContentBlockGroupDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.parentId,
      'child': instance.child,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

_$OnboardingContentBlockNumberedListDaoImpl
    _$$OnboardingContentBlockNumberedListDaoImplFromJson(
            Map<String, dynamic> json) =>
        _$OnboardingContentBlockNumberedListDaoImpl(
          id: json['id'] as String,
          blocks: (json['blocks'] as List<dynamic>)
              .map((e) =>
                  OnboardingContentBlockDao.fromJson(e as Map<String, dynamic>))
              .toList(),
          parentId: json['story'] as String,
          sortId: json['sort_id'] as int,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$OnboardingContentBlockNumberedListDaoImplToJson(
        _$OnboardingContentBlockNumberedListDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'blocks': instance.blocks,
      'story': instance.parentId,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

_$OnboardingContentBlockListDaoImpl
    _$$OnboardingContentBlockListDaoImplFromJson(Map<String, dynamic> json) =>
        _$OnboardingContentBlockListDaoImpl(
          id: json['id'] as String,
          blocks: (json['blocks'] as List<dynamic>)
              .map((e) =>
                  OnboardingContentBlockDao.fromJson(e as Map<String, dynamic>))
              .toList(),
          parentId: json['story'] as String,
          sortId: json['sort_id'] as int,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$OnboardingContentBlockListDaoImplToJson(
        _$OnboardingContentBlockListDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'blocks': instance.blocks,
      'story': instance.parentId,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };

_$OnboardingContentBlockRateDialogDaoImpl
    _$$OnboardingContentBlockRateDialogDaoImplFromJson(
            Map<String, dynamic> json) =>
        _$OnboardingContentBlockRateDialogDaoImpl(
          id: json['id'] as String,
          parentId: json['story'] as String,
          question: json['question'] as String? ?? '',
          sortId: json['sort_id'] as int,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$OnboardingContentBlockRateDialogDaoImplToJson(
        _$OnboardingContentBlockRateDialogDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.parentId,
      'question': instance.question,
      'sort_id': instance.sortId,
      'type': instance.$type,
    };
