// Project imports:
import 'package:terralinkapp/features/greeting_cards/data/dao/api_greeting_template_group/api_greeting_template_group.dart';
import 'package:terralinkapp/features/greeting_cards/data/mappers/api_greeting_template_group_block_dao_mapper.dart';
import 'package:terralinkapp/features/greeting_cards/domain/entities/api_greeting_template_group.dart';

extension ApiGreetingTemplateGroupDaoMapper on ApiGreetingTemplateGroupDao {
  ApiGreetingTemplateGroup toDomain([String? imageUrlPrefix]) => ApiGreetingTemplateGroup(
        id: id,
        blocks: blocks.map((b) => b.toDomain(imageUrlPrefix)).toList(),
        sortId: sortId,
      );
}
