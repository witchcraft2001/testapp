// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/stories/domain/entities/api_story.dart';

part 'stories_cubit_state.freezed.dart';

@freezed
class StoriesCubitState with _$StoriesCubitState {
  const factory StoriesCubitState.loading() = _StoriesCubitStateLoading;

  const factory StoriesCubitState.ready(StoriesState data) = _StoriesCubitStateLoaded;
}

class StoriesState {
  final List<ApiStory> stories;
  final int index;
  final Color? color;

  const StoriesState({
    this.stories = const [],
    this.index = 0,
    this.color,
  });

  StoriesState copyWith({
    List<ApiStory>? stories,
    int? index,
    Color? color,
  }) =>
      StoriesState(
        stories: stories ?? this.stories,
        index: index ?? this.index,
        color: color ?? this.color,
      );
}
