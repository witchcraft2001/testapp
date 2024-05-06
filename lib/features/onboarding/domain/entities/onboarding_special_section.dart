// Project imports:
import 'package:terralinkapp/features/onboarding_stories_content/domain/entities/onboarding_content.dart';

class OnboardingSpecialSection {
  final String id;
  final int sortId;
  final String title;
  final String subtitle;
  final List<OnboardingContent> stories;
  final String image;

  OnboardingSpecialSection({
    required this.id,
    required this.sortId,
    required this.title,
    required this.subtitle,
    required this.stories,
    required this.image,
  });
}
