// Project imports:
import 'package:terralinkapp/features/stories/domain/entities/api_story_block.dart';

class ApiStory {
  final String id;
  final List<ApiStoryBlock> blocks;
  final int sortId;

  ApiStory({
    required this.id,
    required this.blocks,
    required this.sortId,
  });
}
