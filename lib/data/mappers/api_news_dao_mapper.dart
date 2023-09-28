// Project imports:
import 'package:terralinkapp/data/mappers/api_region_dao_mapper.dart';
import 'package:terralinkapp/data/mappers/api_story_dao_mapper.dart';
import 'package:terralinkapp/data/models/responses/api_news/api_news_dao.dart';
import 'package:terralinkapp/domain/entities/api_news.dart';

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
