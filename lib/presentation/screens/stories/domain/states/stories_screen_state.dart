// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/presentation/screens/stories/domain/states/stories_state.dart';

part 'stories_screen_state.freezed.dart';

@freezed
class StoriesScreenState with _$StoriesScreenState {
  const factory StoriesScreenState.loading() = StoriesScreenStateLoading;

  const factory StoriesScreenState.loaded(StoriesState data) = StoriesScreenStateLoaded;
}
