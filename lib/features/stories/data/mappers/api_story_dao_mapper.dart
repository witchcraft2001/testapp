// Project imports:
import 'package:terralinkapp/features/media_content/data/mappers/media_content_block_mapper.dart';
import 'package:terralinkapp/features/media_content/data/services/media_content_parsing_tags_service.dart';
import 'package:terralinkapp/features/stories/data/dao/api_story/api_story_dao.dart';
import 'package:terralinkapp/features/stories/domain/entities/api_story.dart';

extension ApiStoryDaoMapper on ApiStoryDao {
  ApiStory toDomain(MediaContentParsingTagsService service, [String? imageUrlPrefix]) => ApiStory(
        id: id,
        blocks: blocks.map((b) => b.toDomain(service, imageUrlPrefix)).toList(),
        sortId: sortId,
      );
}
