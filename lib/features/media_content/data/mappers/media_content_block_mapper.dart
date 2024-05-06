// Project imports:
import 'package:terralinkapp/features/media_content/data/dao/media_content_block/media_content_block_dao.dart';
import 'package:terralinkapp/features/media_content/domain/entities/media_content_block.dart';

extension MediaContetnBlocksDaoToDomain on List<MediaContentBlockDao> {
  List<MediaContentBlock> toDomain([String? imageUrlPrefix]) {
    return map((e) => e.toDomain(imageUrlPrefix)).toList();
  }
}

extension MediaContentBlockDaoToDomain on MediaContentBlockDao {
  MediaContentBlock toDomain([
    String? imageUrlPrefix,
  ]) {
    return when(
      title: (id, parentId, title, sortId) => MediaContentBlock.title(
        title: title,
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      textField: (id, parentId, content, sortId) => MediaContentBlock.textField(
        content: content.replaceAll('<br>', ''),
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      image: (id, parentId, image, sortId) => MediaContentBlock.image(
        image: '$imageUrlPrefix$image',
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
