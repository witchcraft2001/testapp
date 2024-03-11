// Project imports:
import 'package:terralinkapp/features/media_content/domain/entities/media_content.dart';

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
  final List<MediaContent> stories;
  final String backgroundColor;
  final String image;
}
