// Project imports:
import 'package:terralinkapp/features/news/data/dao/api_news_dao.dart';
import 'package:terralinkapp/features/news/domain/entities/api_news.dart';
import 'package:terralinkapp/features/region/data/mappers/api_region_dao_mapper.dart';
import 'package:terralinkapp/features/stories/data/mappers/api_story_dao_mapper.dart';

extension ApiNewsDaoMapper on ApiNewsDao {
  ApiNews toDomain([String? imageUrlPrefix, String? iconUrlPrefix]) => ApiNews(
        id: id,
        title: title,
        subtitle: subtitle,
        type: type.toDomain(),
        published: published,
        icon: iconUrlPrefix != null && icon != null && icon != '' ? '$iconUrlPrefix$icon' : icon,
        link: link,
        tag: tag,
        backgroundColor: backgroundColor,
        fontColor: fontColor,
        sortId: sortId,
        stories: stories.map((s) => s.toDomain(imageUrlPrefix)).toList(),
        region: region?.toDomain(),
      );
}

extension ApiNewsDaoTypeMapper on ApiNewsDaoType {
  ApiNewsType toDomain() {
    return switch (this) {
      ApiNewsDaoType.link => ApiNewsType.link,
      ApiNewsDaoType.story => ApiNewsType.story,
    };
  }
}
