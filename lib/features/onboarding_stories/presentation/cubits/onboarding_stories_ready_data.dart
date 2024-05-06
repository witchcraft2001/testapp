// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/features/onboarding_stories_content/domain/entities/onboarding_content.dart';

class MediaContentStoriesReadyData {
  final List<OnboardingContent> stories;
  final int index;
  final Color? color;

  const MediaContentStoriesReadyData({
    this.stories = const [],
    this.index = 0,
    this.color,
  });

  MediaContentStoriesReadyData copyWith({
    List<OnboardingContent>? stories,
    int? index,
    Color? color,
  }) =>
      MediaContentStoriesReadyData(
        stories: stories ?? this.stories,
        index: index ?? this.index,
        color: color ?? this.color,
      );
}
