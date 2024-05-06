// Project imports:
import 'package:terralinkapp/features/onboarding_stories_content/data/dao/onboarding_content_block/onboarding_content_block_dao.dart';
import 'package:terralinkapp/features/onboarding_stories_content/data/services/onboarding_content_parsing_tags_service.dart';
import 'package:terralinkapp/features/onboarding_stories_content/domain/entities/onboarding_content_block.dart';
import 'package:terralinkapp/features/onboarding_stories_content/domain/entities/onboarding_media_platform.dart';

extension OnboardingContetnBlocksDaoToDomain on List<OnboardingContentBlockDao> {
  List<OnboardingContentBlock> toDomain(
    OnboardingContentParsingTagsService service, [
    String? imageUrlPrefix,
  ]) {
    return map((e) => e.toDomain(service, imageUrlPrefix)).toList();
  }
}

extension OnboardingContentBlockDaoToDomain on OnboardingContentBlockDao {
  OnboardingContentBlock toDomain(
    OnboardingContentParsingTagsService service, [
    String? imageUrlPrefix,
  ]) {
    return when(
      title: (id, parentId, title, sortId) => OnboardingContentBlock.title(
        title: title,
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      subtitle: (id, parentId, subtitle, sortId) => OnboardingContentBlock.subtitle(
        subtitle: subtitle,
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      markedSubtitle: (id, parentId, subtitle, sortId) => OnboardingContentBlock.markedSubtitle(
        subtitle: subtitle,
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      textField: (id, parentId, content, sortId) {
        if (service.isHtmlContent(content)) {
          return OnboardingContentBlock.richTextField(
            elements: service.parseMediaContentData(content),
            id: id,
            parentId: parentId,
            sortId: sortId,
          );
        }

        return OnboardingContentBlock.textField(
          content: content,
          id: id,
          parentId: parentId,
          sortId: sortId,
        );
      },
      image: (id, parentId, image, sortId) => OnboardingContentBlock.image(
        image: '$imageUrlPrefix$image',
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      svg: (id, parentId, image, sortId) => OnboardingContentBlock.svg(
        image: image,
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      linkButton: (id, parentId, link, title, sortId) => OnboardingContentBlock.linkButton(
        link: link,
        title: title,
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      subscribeButton: (id, parentId, media, link, sortId) =>
          OnboardingContentBlock.subscribeButton(
        media: media.toDomain(),
        link: link,
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      group: (id, parentId, child, sortId) => OnboardingContentBlock.group(
        child: child.toDomain(service, imageUrlPrefix),
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      numberedList: (id, blocks, parentId, sortId) => OnboardingContentBlock.numberedList(
        blocks: blocks.toDomain(service, imageUrlPrefix),
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      list: (id, blocks, parentId, sortId) => OnboardingContentBlock.list(
        blocks: blocks.toDomain(service, imageUrlPrefix),
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
      rateDialog: (id, parentId, question, sortId) => OnboardingContentBlock.rateDialog(
        question: question,
        id: id,
        parentId: parentId,
        sortId: sortId,
      ),
    );
  }
}

extension OnboardingContentSocialMediaDaoToDomain on OnboardingPlatformDao {
  OnboardingMediaPlatform toDomain() {
    return switch (this) {
      OnboardingPlatformDao.telegram => OnboardingMediaPlatform.telegram,
      OnboardingPlatformDao.youtube => OnboardingMediaPlatform.youtube,
    };
  }
}
