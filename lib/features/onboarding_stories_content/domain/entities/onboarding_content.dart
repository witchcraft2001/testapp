// Project imports:
import 'package:terralinkapp/features/onboarding_stories_content/domain/entities/onboarding_content_block.dart';

class OnboardingContent {
  OnboardingContent({
    required this.id,
    required this.blocks,
    required this.sortId,
  });

  final String id;
  final List<OnboardingContentBlock> blocks;
  final int sortId;
}
