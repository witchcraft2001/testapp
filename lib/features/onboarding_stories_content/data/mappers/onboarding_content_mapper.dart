// Project imports:
import 'package:terralinkapp/features/onboarding_stories_content/data/dao/onboarding_content/onboarding_content_dao.dart';
import 'package:terralinkapp/features/onboarding_stories_content/data/mappers/onboarding_content_block_mapper.dart';
import 'package:terralinkapp/features/onboarding_stories_content/data/services/onboarding_content_parsing_tags_service.dart';
import 'package:terralinkapp/features/onboarding_stories_content/domain/entities/onboarding_content.dart';

extension OnboardingContentDaoToDomain on OnboardingContentDao {
  OnboardingContent toDomain(OnboardingContentParsingTagsService service,
          [String? imageUrlPrefix]) =>
      OnboardingContent(
        id: id,
        blocks: blocks.toDomain(service, imageUrlPrefix),
        sortId: sortId,
      );
}
