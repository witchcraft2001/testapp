// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_usefull_materials_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnboardingUsefullMaterialDaoImpl _$$OnboardingUsefullMaterialDaoImplFromJson(
        Map<String, dynamic> json) =>
    _$OnboardingUsefullMaterialDaoImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      backgroundColor: json['background_color'] as String,
      sortId: json['sort_id'] as int,
      stories: (json['stories'] as List<dynamic>?)
              ?.map((e) => MediaContentDao.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MediaContentDao>[],
    );

Map<String, dynamic> _$$OnboardingUsefullMaterialDaoImplToJson(
        _$OnboardingUsefullMaterialDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'background_color': instance.backgroundColor,
      'sort_id': instance.sortId,
      'stories': instance.stories,
    };
