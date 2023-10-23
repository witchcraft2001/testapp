// Project imports:
import 'package:terralinkapp/data/mappers/stories/api_story_block_dao_mapper.dart';
import 'package:terralinkapp/data/models/responses/api_story/api_story_dao.dart';
import 'package:terralinkapp/domain/entities/api_story.dart';

extension ApiStoryDaoMapper on ApiStoryDao {
  ApiStory toDomain([String? imageUrlPrefix]) => ApiStory(
        id: id,
        blocks: blocks.map((b) => b.toDomain(imageUrlPrefix)).toList(),
        sortId: sortId,
      );
}
