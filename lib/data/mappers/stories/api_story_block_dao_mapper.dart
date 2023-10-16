// Project imports:
import 'package:terralinkapp/data/models/responses/api_story_block/api_story_block_dao.dart';
import 'package:terralinkapp/domain/entities/api_story_block.dart';

extension ApiStoryBlockDaoMapper on ApiStoryBlockDao {
  ApiStoryBlock toDomain([String? imageUrlPrefix]) => ApiStoryBlock(
        id: id,
        story: story,
        type: type.toDomain(),
        title: title,
        link: link,
        content: content,
        parsedContent:
            type.toDomain() == ApiStoryBlockType.textField ? parsedContent : [],
        image: (imageUrlPrefix != null && image != null && image != '')
            ? '$imageUrlPrefix$image'
            : image,
        buttonTitle: buttonTitle,
        sortId: sortId,
      );
}

extension ApiStoryBlockTypeMapper on ApiStoryBlockDaoType {
  ApiStoryBlockType toDomain() {
    return switch (this) {
      ApiStoryBlockDaoType.image => ApiStoryBlockType.image,
      ApiStoryBlockDaoType.link_button => ApiStoryBlockType.linkButton,
      ApiStoryBlockDaoType.text_field => ApiStoryBlockType.textField,
      ApiStoryBlockDaoType.title => ApiStoryBlockType.title,
    };
  }
}
