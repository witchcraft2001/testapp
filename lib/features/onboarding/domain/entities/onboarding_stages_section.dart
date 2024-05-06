// Project imports:
import 'package:terralinkapp/features/onboarding_stories_content/domain/entities/onboarding_content.dart';

class OnboardingStageSection {
  OnboardingStageSection({
    required this.id,
    required this.sortId,
    required this.title,
    required this.stories,
  });

  final String id;
  final int sortId;
  final String title;
  final List<OnboardingContent> stories;
}
