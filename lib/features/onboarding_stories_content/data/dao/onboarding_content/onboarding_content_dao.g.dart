// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_content_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnboardingContentDaoImpl _$$OnboardingContentDaoImplFromJson(
        Map<String, dynamic> json) =>
    _$OnboardingContentDaoImpl(
      id: json['id'] as String,
      blocks: (json['blocks'] as List<dynamic>)
          .map((e) =>
              OnboardingContentBlockDao.fromJson(e as Map<String, dynamic>))
          .toList(),
      sortId: json['sort_id'] as int,
    );

Map<String, dynamic> _$$OnboardingContentDaoImplToJson(
        _$OnboardingContentDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'blocks': instance.blocks,
      'sort_id': instance.sortId,
    };
