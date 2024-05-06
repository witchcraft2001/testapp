// Flutter imports:
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/core/ui/widgets/decorations/tl_bulleted_list.dart';
import 'package:terralinkapp/core/ui/widgets/images/tl_network_image.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';
import 'package:terralinkapp/core/utils/buttons.dart';
import 'package:terralinkapp/core/utils/links.dart';
import 'package:terralinkapp/features/onboarding_stories_content/domain/entities/onboarding_content_block.dart';
import 'package:terralinkapp/features/onboarding_stories_content/domain/entities/onboarding_content_rich_text_elements.dart';
import 'package:terralinkapp/features/onboarding_stories_content/domain/entities/onboarding_media_platform.dart';
import 'package:terralinkapp/features/onboarding_stories_content/presentation/params/onboarding_content_block_params.dart';
import 'package:terralinkapp/generated/l10n.dart';

part 'onboarding_content_block_group.dart';
part 'onboarding_content_block_image.dart';
part 'onboarding_content_block_linked_button.dart';
part 'onboarding_content_block_list.dart';
part 'onboarding_content_block_marked_subtitle.dart';
part 'onboarding_content_block_numbered_list.dart';
part 'onboarding_content_block_rich_text_field.dart';
part 'onboarding_content_block_subscribe_button.dart';
part 'onboarding_content_block_subtitle.dart';
part 'onboarding_content_block_text_field.dart';
part 'onboarding_content_block_title.dart';

part 'rich_text_field/onboarding_content_block_rich_text_block.dart';
part 'rich_text_field/onboarding_content_block_rich_text_ordered_list.dart';
part 'rich_text_field/onboarding_content_block_rich_text_unordered_list.dart';
part 'rich_text_field/onboarding_content_block_rich_text_paragraph.dart';

class OnboardingContentBlockWidget extends StatelessWidget {
  final OnboardingContentBlock block;
  final OnboardingContentBlockParams params;

  const OnboardingContentBlockWidget({
    super.key,
    required this.block,
    this.params = const OnboardingContentBlockParams(),
  });

  @override
  Widget build(BuildContext context) {
    return block.when(
      title: (_, __, ___, title) => _OnboardingContentBlockTitleWidget(
        title: title,
      ),
      subtitle: (_, __, ___, subtitle) => _OnboardingContentBlockSubtitleWidget(
        subtitle: subtitle,
      ),
      markedSubtitle: (_, __, ___, subtitle) => _OnboardingContentBlockMarkedSubtitleWidget(
        subtitle: subtitle,
        maxLines: 1,
      ),
      textField: (_, __, ___, content) => _OnboardingContentBlockTextFieldWidget(
        text: content,
        params: params.text,
      ),
      richTextField: (_, __, ___, elements) => _OnboardingContentBlockRichTextFieldWidget(
        params: params.rich,
        elements: elements,
      ),
      image: (_, __, ___, image) => _OnboardingContentBlockImageWidget(
        image: image,
        params: params.image,
      ),
      svg: (_, __, ___, image) => _OnboardingContentBlockImageWidget(
        image: image,
        params: params.image,
      ),
      linkButton: (_, __, ___, link, title) => _OnboardingContentBlockLinkedButtonWidget(
        link: link,
        title: title,
      ),
      subscribeButton: (_, __, ___, media, link) => _OnboardingContentSubscribeButtonWidget(
        link: link,
        media: media,
      ),
      group: (_, __, ___, child) => _OnboardingContentBlockGroupWidget(
        child: OnboardingContentBlockWidget(block: child),
      ),
      numberedList: (_, __, ___, blocks) => _OnboardingContentBlockNumberedListWidget(
        children: [
          for (int i = 0; i < blocks.length; i++) OnboardingContentBlockWidget(block: blocks[i]),
        ],
      ),
      list: (_, __, ___, blocks) => _OnboardingContentBlockListWidget(
        children: [
          for (int i = 0; i < blocks.length; i++) OnboardingContentBlockWidget(block: blocks[i]),
        ],
      ),
      rateDialog: (id, parentId, sortId, question) => const SizedBox(),
    );
  }
}
