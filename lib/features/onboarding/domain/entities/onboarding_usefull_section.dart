// Project imports:
import 'package:terralinkapp/features/onboarding_stories_content/domain/entities/onboarding_content.dart';

class OnboardingUsefullMaterial {
  OnboardingUsefullMaterial({
    required this.id,
    required this.sortId,
    required this.title,
    required this.stories,
    required this.image,
    required this.backgroundColor,
  });

  final String id;
  final int sortId;
  final String title;
  final List<OnboardingContent> stories;
  final String backgroundColor;
  final String image;
}
