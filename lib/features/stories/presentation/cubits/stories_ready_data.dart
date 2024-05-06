// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/features/media_content/domain/entities/media_content.dart';

class StoriesReadyData {
  final List<MediaContent> stories;
  final int index;
  final Color? color;

  const StoriesReadyData({
    this.stories = const [],
    this.index = 0,
    this.color,
  });

  StoriesReadyData copyWith({
    List<MediaContent>? stories,
    int? index,
    Color? color,
  }) =>
      StoriesReadyData(
        stories: stories ?? this.stories,
        index: index ?? this.index,
        color: color ?? this.color,
      );
}
