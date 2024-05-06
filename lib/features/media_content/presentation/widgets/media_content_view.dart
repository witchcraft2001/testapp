// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/features/media_content/domain/entities/media_content.dart';
import 'package:terralinkapp/features/media_content/presentation/widgets/media_content_block.dart';

class MediaContentView extends StatelessWidget {
  final MediaContent content;

  const MediaContentView({
    required this.content,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: TlSpaces.safeAreaPadding(
        context,
        left: true,
        right: true,
        bottom: true,
        bottomOffset: TlSpaces.sp16,
      ),
      itemCount: content.blocks.length,
      itemBuilder: (_, index) => Padding(
        padding: TlSpaces.ph24t12,
        child: MediaContentBlockWidget(block: content.blocks[index]),
      ),
    );
  }
}
