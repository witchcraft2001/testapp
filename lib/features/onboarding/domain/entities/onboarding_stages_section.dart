// Project imports:
import 'package:terralinkapp/features/media_content/domain/entities/media_content.dart';

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
  final List<MediaContent> stories;
}
