// Project imports:
import 'package:terralinkapp/features/media_content/domain/entities/media_content_block.dart';

class ApiStory {
  final String id;
  final List<MediaContentBlock> blocks;
  final int sortId;

  ApiStory({
    required this.id,
    required this.blocks,
    required this.sortId,
  });
}
