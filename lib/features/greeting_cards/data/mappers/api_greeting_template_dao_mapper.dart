// Project imports:
import 'package:terralinkapp/core/utils/colors.dart';
import 'package:terralinkapp/features/greeting_cards/data/dao/api_greeting_template/api_greeting_template_dao.dart';
import 'package:terralinkapp/features/greeting_cards/domain/entities/api_greeting_template.dart';
import 'package:terralinkapp/features/media_content/data/dao/media_content/media_content_dao.dart';
import 'package:terralinkapp/features/media_content/data/mappers/media_content_mapper.dart';
import 'package:terralinkapp/features/region/data/mappers/api_region_dao_mapper.dart';

extension ApiGreetingTemplateDaoMapper on ApiGreetingTemplateDao {
  ApiGreetingTemplate toDomain([String? imageUrlPrefix]) => ApiGreetingTemplate(
        id: id,
        title: title,
        access: access.toDomain(),
        isPublished: published,
        backgroundColor: tryParseColor(backgroundColor),
        fontColor: fontColor,
        sortId: sortId,
        groups: groups.map((s) => s.toDomain(imageUrlPrefix)).toList(),
        region: region?.toDomain(),
        image: _getImage(groups, imageUrlPrefix),
        isAppeal: _getIsAppeal(groups),
        isSignature: _getIsSignature(groups),
      );
}

extension ApiGreetingTemplateAccessDaoMapper on ApiGreetingTemplateDaoAccess {
  ApiGreetingTemplateAccess toDomain() {
    return switch (this) {
      ApiGreetingTemplateDaoAccess.open => ApiGreetingTemplateAccess.open,
      ApiGreetingTemplateDaoAccess.limited => ApiGreetingTemplateAccess.limited,
    };
  }
}

// Для превью щаблона берется первое изображение
String? _getImage(List<MediaContentDao> groups, [String? imageUrlPrefix]) {
  for (final group in groups) {
    for (final block in group.blocks) {
      final image = block.whenOrNull(image: (_, __, image, ___) => image);

      if (image != null) return imageUrlPrefix != null ? '$imageUrlPrefix$image' : image;
    }
  }

  return null;
}

// Т.к. поля ввода нужные в единственном экземпляре
bool _getIsAppeal(List<MediaContentDao> groups) {
  for (final group in groups) {
    for (final block in group.blocks) {
      final isAppeal = block.whenOrNull(appeal: (_, __, ___) => true) ?? false;

      if (isAppeal) return isAppeal;
    }
  }

  return false;
}

// Т.к. поля ввода нужные в единственном экземпляре
bool _getIsSignature(List<MediaContentDao> groups) {
  for (final group in groups) {
    for (final block in group.blocks) {
      final isSignature = block.whenOrNull(signature: (_, __, ___) => true) ?? false;

      if (isSignature) return isSignature;
    }
  }

  return false;
}
