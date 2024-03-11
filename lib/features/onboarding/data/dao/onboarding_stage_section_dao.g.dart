// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_stage_section_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnboardingStageSectionDaoImpl _$$OnboardingStageSectionDaoImplFromJson(
        Map<String, dynamic> json) =>
    _$OnboardingStageSectionDaoImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      sortId: json['sort_id'] as int,
      stories: (json['stories'] as List<dynamic>?)
              ?.map((e) => MediaContentDao.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MediaContentDao>[],
    );

Map<String, dynamic> _$$OnboardingStageSectionDaoImplToJson(
        _$OnboardingStageSectionDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'sort_id': instance.sortId,
      'stories': instance.stories,
    };
