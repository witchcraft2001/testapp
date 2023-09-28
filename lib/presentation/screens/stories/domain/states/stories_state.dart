// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/domain/entities/api_story.dart';

part 'stories_state.freezed.dart';

@freezed
class StoriesState with _$StoriesState {
  const factory StoriesState({
    @Default(<ApiStory>[]) List<ApiStory> stories,
    @Default(0) int index,
    Color? color,
  }) = _StoriesState;
}
