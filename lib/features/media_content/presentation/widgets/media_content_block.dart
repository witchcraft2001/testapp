// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/core/ui/widgets/html/tl_html.dart';
import 'package:terralinkapp/core/ui/widgets/images/tl_network_image.dart';
import 'package:terralinkapp/core/utils/buttons.dart';
import 'package:terralinkapp/core/utils/links.dart';
import 'package:terralinkapp/features/media_content/domain/entities/media_content_block.dart';
import 'package:terralinkapp/features/media_content/presentation/params/media_content_block_params.dart';
import 'package:terralinkapp/generated/l10n.dart';

part 'media_content_block_appeal.dart';
part 'media_content_block_image.dart';
part 'media_content_block_linked_button.dart';
part 'media_content_block_text_field.dart';
part 'media_content_block_title.dart';

part 'media_content_block_signature.dart';

class MediaContentBlockWidget extends StatelessWidget {
  final MediaContentBlock block;
  final MediaContentBlockParams params;

  const MediaContentBlockWidget({
    super.key,
    required this.block,
    this.params = const MediaContentBlockParams(),
  });

  @override
  Widget build(BuildContext context) {
    return block.when(
      title: (_, __, ___, title) => _MediaContentBlockTitleWidget(
        title: title,
      ),
      textField: (_, __, ___, content) => _MediaContentBlockTextFieldWidget(
        text: content,
        params: params.text,
      ),
      image: (_, __, ___, image) => _MediaContentBlockImageWidget(
        image: image,
        params: params.image,
      ),
      linkButton: (_, __, ___, link, title) => _MediaContentBlockLinkedButtonWidget(
        link: link,
        title: title,
      ),
      appeal: (_, __, ___) => _MediaContentBlockAppealWidget(
        params: params.appeal,
      ),
      signature: (_, __, ___) => _MediaContentBlockSignatureWidget(
        params: params.signature,
      ),
    );
  }
}
