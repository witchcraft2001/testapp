// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_special_section_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnboardingSpecialSectionDaoImpl _$$OnboardingSpecialSectionDaoImplFromJson(
        Map<String, dynamic> json) =>
    _$OnboardingSpecialSectionDaoImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      image: json['image'] as String,
      sortId: json['sort_id'] as int,
      stories: (json['stories'] as List<dynamic>?)
              ?.map((e) => MediaContentDao.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MediaContentDao>[],
    );

Map<String, dynamic> _$$OnboardingSpecialSectionDaoImplToJson(
        _$OnboardingSpecialSectionDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'image': instance.image,
      'sort_id': instance.sortId,
      'stories': instance.stories,
    };
