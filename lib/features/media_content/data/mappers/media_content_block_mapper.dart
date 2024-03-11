// Project imports:
import 'package:terralinkapp/features/media_content/data/dao/media_content_block/media_content_block_dao.dart';
import 'package:terralinkapp/features/media_content/data/services/media_content_parsing_tags_service.dart';
import 'package:terralinkapp/features/media_content/domain/entities/media_content_block.dart';
import 'package:terralinkapp/features/media_content/domain/entities/media_platform.dart';

extension MediaContetnBlocksDaoToDomain on List<MediaContentBlockDao> {
  List<MediaContentBlock> toDomain(
    MediaContentParsingTagsService service, [
    String? imageUrlPrefix,
  ]) {
    return map((e) => e.toDomain(service, imageUrlPrefix)).toList();
  }
}

extension MediaContentBlockDaoToDomain on MediaContentBlockDao {
  MediaContentBlock toDomain(
    MediaContentParsingTagsService service, [
    String? imageUrlPrefix,
  ]) {
    return when(
      title: (id, parentId, title, sortId) => MediaContentBlock.title(
        title: title,
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      subtitle: (id, parentId, subtitle, sortId) => MediaContentBlock.subtitle(
        subtitle: subtitle,
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      markedSubtitle: (id, parentId, subtitle, sortId) => MediaContentBlock.markedSubtitle(
        subtitle: subtitle,
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      textField: (id, parentId, content, sortId) {
        if (service.isHtmlContent(content)) {
          return MediaContentBlock.richTextField(
            elements: service.parseMediaContentData(content),
            id: id,
            parentId: parentId,
            sortId: sortId,
          );
        }

        return MediaContentBlock.textField(
          content: content,
          id: id,
          parentId: parentId,
          sortId: sortId,
        );
      },
      image: (id, parentId, image, sortId) => MediaContentBlock.image(
        image: '$imageUrlPrefix$image',
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      svg: (id, parentId, image, sortId) => MediaContentBlock.svg(
        image: image,
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      linkButton: (id, parentId, link, title, sortId) => MediaContentBlock.linkButton(
        link: link,
        title: title,
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      subscribeButton: (id, parentId, media, link, sortId) => MediaContentBlock.subscribeButton(
        media: media.toDomain(),
        link: link,
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      group: (id, parentId, child, sortId) => MediaContentBlock.group(
        child: child.toDomain(service, imageUrlPrefix),
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      numberedList: (id, blocks, parentId, sortId) => MediaContentBlock.numberedList(
        blocks: blocks.toDomain(service, imageUrlPrefix),
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      list: (id, blocks, parentId, sortId) => MediaContentBlock.list(
        blocks: blocks.toDomain(service, imageUrlPrefix),
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      rateDialog: (id, parentId, question, sortId) => MediaContentBlock.rateDialog(
        question: question,
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      appeal: (id, parentId, sortId) => MediaContentBlock.appeal(
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      signature: (id, parentId, sortId) => MediaContentBlock.signature(
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
    );
  }
}

extension MediaContentSocialMediaDaoToDomain on MediaPlatformDao {
  MediaPlatform toDomain() {
    return switch (this) {
      MediaPlatformDao.telegram => MediaPlatform.telegram,
      MediaPlatformDao.youtube => MediaPlatform.youtube,
    };
  }
}
