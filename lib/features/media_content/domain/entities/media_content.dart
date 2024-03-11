// Project imports:
import 'package:terralinkapp/features/media_content/domain/entities/media_content_block.dart';

class MediaContent {
  MediaContent({
    required this.id,
    required this.blocks,
    required this.sortId,
  });

  final String id;
  final List<MediaContentBlock> blocks;
  final int sortId;
}
