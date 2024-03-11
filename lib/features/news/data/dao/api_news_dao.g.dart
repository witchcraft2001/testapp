// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_news_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiNewsDaoImpl _$$ApiNewsDaoImplFromJson(Map<String, dynamic> json) =>
    _$ApiNewsDaoImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      type: $enumDecode(_$ApiNewsDaoTypeEnumMap, json['type']),
      published: json['published'] as bool,
      icon: json['icon'] as String?,
      region: json['region'] == null
          ? null
          : ApiRegionDao.fromJson(json['region'] as Map<String, dynamic>),
      link: json['link'] as String? ?? '',
      tag: json['tag'] as String? ?? '',
      backgroundColor: json['background_color'] as String,
      fontColor: json['font_color'] as String? ?? '',
      sortId: json['sort_id'] as int,
      stories: (json['stories'] as List<dynamic>?)
              ?.map((e) => MediaContentDao.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MediaContentDao>[],
    );

Map<String, dynamic> _$$ApiNewsDaoImplToJson(_$ApiNewsDaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'type': _$ApiNewsDaoTypeEnumMap[instance.type]!,
      'published': instance.published,
      'icon': instance.icon,
      'region': instance.region,
      'link': instance.link,
      'tag': instance.tag,
      'background_color': instance.backgroundColor,
      'font_color': instance.fontColor,
      'sort_id': instance.sortId,
      'stories': instance.stories,
    };

const _$ApiNewsDaoTypeEnumMap = {
  ApiNewsDaoType.link: 'link',
  ApiNewsDaoType.story: 'story',
};
