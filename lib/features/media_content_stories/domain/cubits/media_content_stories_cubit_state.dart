// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/media_content/domain/entities/media_content.dart';

part 'media_content_stories_cubit_state.freezed.dart';

@freezed
class MediaContentStoriesCubitState with _$MediaContentStoriesCubitState {
  const factory MediaContentStoriesCubitState.loading() = _MediaContentStoriesStateLoading;

  const factory MediaContentStoriesCubitState.ready(MediaContentStoriesState data) =
      _MediaContentStoriesStateLoaded;
}

class MediaContentStoriesState {
  final List<MediaContent> stories;
  final int index;
  final Color? color;

  const MediaContentStoriesState({
    this.stories = const [],
    this.index = 0,
    this.color,
  });

  MediaContentStoriesState copyWith({
    List<MediaContent>? stories,
    int? index,
    Color? color,
  }) =>
      MediaContentStoriesState(
        stories: stories ?? this.stories,
        index: index ?? this.index,
        color: color ?? this.color,
      );
}
