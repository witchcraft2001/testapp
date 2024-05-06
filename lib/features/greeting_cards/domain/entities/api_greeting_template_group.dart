// Project imports:
import 'package:terralinkapp/features/greeting_cards/domain/entities/api_greeting_template_group_block.dart';

class ApiGreetingTemplateGroup {
  final String id;
  final List<ApiGreetingTemplateGroupBlock> blocks;
  final int sortId;

  ApiGreetingTemplateGroup({
    required this.id,
    required this.blocks,
    required this.sortId,
  });
}
