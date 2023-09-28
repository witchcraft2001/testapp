// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/domain/entities/api_story.dart';
import 'package:terralinkapp/presentation/screens/stories/domain/states/stories_screen_state.dart';
import 'package:terralinkapp/presentation/screens/stories/domain/states/stories_state.dart';

class StoriesCubit extends Cubit<StoriesScreenState> {
  StoriesCubit() : super(const StoriesScreenState.loading());

  StoriesState _state = const StoriesState();

  void init(List<ApiStory> stories, Color? color) {
    _state = _state.copyWith(
      stories: stories,
      color: color,
    );

    emit(StoriesScreenState.loaded(_state));
  }

  void goToNext() {
    final index = _state.index == _state.stories.length - 1 ? _state.index : _state.index + 1;

    _change(index);
  }

  void goToPrevious() {
    final index = _state.index == 0 ? 0 : _state.index - 1;

    _change(index);
  }

  void _change(int index) {
    _state = _state.copyWith(index: index);

    emit(StoriesScreenState.loaded(_state));
  }
}
