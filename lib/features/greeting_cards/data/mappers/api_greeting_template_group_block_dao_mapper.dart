// Project imports:
import 'package:terralinkapp/features/greeting_cards/data/dao/api_greeting_template_group_block/api_greeting_template_group_block.dart';
import 'package:terralinkapp/features/greeting_cards/domain/entities/api_greeting_template_group_block.dart';

extension ApiGreetingTemplateGroupBlockDaoMapper on ApiGreetingTemplateGroupBlockDao {
  ApiGreetingTemplateGroupBlock toDomain([String? imageUrlPrefix]) => ApiGreetingTemplateGroupBlock(
        id: id,
        story: group,
        type: type.toDomain(),
        title: title,
        link: link,
        content: content.replaceAll('<br>', ''),
        image: (imageUrlPrefix != null && image != null && image != '')
            ? '$imageUrlPrefix$image'
            : image,
        buttonTitle: buttonTitle,
        sortId: sortId,
      );
}

extension ApiStoryBlockTypeMapper on ApiGreetingTemplateGroupBlockDaoType {
  ApiGreetingTemplateGroupBlockType toDomain() {
    return switch (this) {
      ApiGreetingTemplateGroupBlockDaoType.image => ApiGreetingTemplateGroupBlockType.image,
      ApiGreetingTemplateGroupBlockDaoType.appeal => ApiGreetingTemplateGroupBlockType.appeal,
      ApiGreetingTemplateGroupBlockDaoType.text_field =>
        ApiGreetingTemplateGroupBlockType.textField,
      ApiGreetingTemplateGroupBlockDaoType.signature => ApiGreetingTemplateGroupBlockType.signature,
    };
  }
}
