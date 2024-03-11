// Project imports:
import 'package:terralinkapp/features/media_content/domain/entities/media_content.dart';

class OnboardingSpecialSection {
  final String id;
  final int sortId;
  final String title;
  final String subtitle;
  final List<MediaContent> stories;
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
