// Flutter imports:
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/common/constants.dart';
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/core/common/tl_chars.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/core/ui/widgets/decorations/tl_bulleted_list.dart';
import 'package:terralinkapp/core/ui/widgets/dialogs/tl_dialog_confirm.dart';
import 'package:terralinkapp/core/ui/widgets/images/tl_network_image.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';
import 'package:terralinkapp/core/utils/buttons.dart';
import 'package:terralinkapp/core/utils/common.dart';
import 'package:terralinkapp/features/media_content/domain/entities/media_content_block.dart';
import 'package:terralinkapp/features/media_content/domain/entities/media_content_rich_text_elements.dart';
import 'package:terralinkapp/features/media_content/domain/entities/media_platform.dart';
import 'package:terralinkapp/features/media_content/domain/use_cases/params/send_email_use_case_params.dart';
import 'package:terralinkapp/features/media_content/domain/use_cases/send_email_use_case.dart';
import 'package:terralinkapp/features/media_content/presentation/params/media_content_block_params.dart';
import 'package:terralinkapp/features/stories/data/entities/app_tag_content.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

part 'media_content_block_appeal.dart';
part 'media_content_block_group.dart';
part 'media_content_block_image.dart';
part 'media_content_block_linked_button.dart';
part 'media_content_block_list.dart';
part 'media_content_block_marked_subtitle.dart';
part 'media_content_block_numbered_list.dart';
part 'media_content_block_rich_text_field.dart';
part 'media_content_block_subscribe_button.dart';
part 'media_content_block_subtitle.dart';
part 'media_content_block_text_field.dart';
part 'media_content_block_title.dart';

part 'media_content_block_signature.dart';
part 'rich_text_field/media_content_block_rich_text_block.dart';
part 'rich_text_field/media_content_block_rich_text_ordered_list.dart';
part 'rich_text_field/media_content_block_rich_text_unordered_list.dart';
part 'rich_text_field/media_content_block_rich_text_paragraph.dart';

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
      subtitle: (_, __, ___, subtitle) => _MediaContentBlockSubtitleWidget(
        subtitle: subtitle,
      ),
      markedSubtitle: (_, __, ___, subtitle) => _MediaContentBlockMarkedSubtitleWidget(
        subtitle: subtitle,
        maxLines: 1,
      ),
      textField: (_, __, ___, content) => _MediaContentBlockTextFieldWidget(
        text: content,
        params: params.text,
      ),
      richTextField: (_, __, ___, elements) => _MediaContentBlockRichTextFieldWidget(
        params: params.rich,
        elements: elements,
      ),
      image: (_, __, ___, image) => _MediaContentBlockImageWidget(
        image: image,
        params: params.image,
      ),
      svg: (_, __, ___, image) => _MediaContentBlockImageWidget(
        image: image,
        params: params.image,
      ),
      linkButton: (_, __, ___, link, title) => _MediaContentBlockLinkedButtonWidget(
        link: link,
        title: title,
      ),
      subscribeButton: (_, __, ___, media, link) => _MediaContentSubscribeButtonWidget(
        link: link,
        media: media,
      ),
      group: (_, __, ___, child) => _MediaContentBlockGroupWidget(
        child: MediaContentBlockWidget(block: child),
      ),
      numberedList: (_, __, ___, blocks) => _MediaContentBlockNumberedListWidget(
        children: [
          for (int i = 0; i < blocks.length; i++) MediaContentBlockWidget(block: blocks[i]),
        ],
      ),
      list: (_, __, ___, blocks) => _MediaContentBlockListWidget(
        children: [
          for (int i = 0; i < blocks.length; i++) MediaContentBlockWidget(block: blocks[i]),
        ],
      ),
      rateDialog: (id, parentId, sortId, question) => const SizedBox(),
      appeal: (_, __, ___) => _MediaContentBlockAppealWidget(
        params: params.appeal,
      ),
      signature: (_, __, ___) => _MediaContentBlockSignatureWidget(
        params: params.signature,
      ),
    );
  }
}
