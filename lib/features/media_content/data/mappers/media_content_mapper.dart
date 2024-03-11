// Project imports:
import 'package:terralinkapp/features/media_content/data/dao/media_content/media_content_dao.dart';
import 'package:terralinkapp/features/media_content/data/mappers/media_content_block_mapper.dart';
import 'package:terralinkapp/features/media_content/data/services/media_content_parsing_tags_service.dart';
import 'package:terralinkapp/features/media_content/domain/entities/media_content.dart';

extension MediaContentDaoToDomain on MediaContentDao {
  MediaContent toDomain(MediaContentParsingTagsService service, [String? imageUrlPrefix]) =>
      MediaContent(
        id: id,
        blocks: blocks.toDomain(service, imageUrlPrefix),
        sortId: sortId,
      );
}
