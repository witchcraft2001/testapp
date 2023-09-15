// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiNews _$$_ApiNewsFromJson(Map<String, dynamic> json) => _$_ApiNews(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      type: $enumDecode(_$ApiNewsTypeEnumMap, json['type']),
      published: json['published'] as bool,
      icon: json['icon'] as String?,
      link: json['link'] as String? ?? '',
      tag: json['tag'] as String? ?? '',
      backgroundColor: json['background_color'] as String,
      fontColor: json['font_color'] as String? ?? '',
      sortId: json['sort_id'] as int,
      stories: (json['stories'] as List<dynamic>?)
              ?.map((e) => ApiStory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ApiStory>[],
    );

Map<String, dynamic> _$$_ApiNewsToJson(_$_ApiNews instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'type': _$ApiNewsTypeEnumMap[instance.type]!,
      'published': instance.published,
      'icon': instance.icon,
      'link': instance.link,
      'tag': instance.tag,
      'background_color': instance.backgroundColor,
      'font_color': instance.fontColor,
      'sort_id': instance.sortId,
      'stories': instance.stories,
    };

const _$ApiNewsTypeEnumMap = {
  ApiNewsType.link: 'link',
  ApiNewsType.story: 'story',
};
