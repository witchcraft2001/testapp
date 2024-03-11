// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/features/media_content/domain/entities/media_content.dart';
import 'package:terralinkapp/features/media_content_stories/domain/cubits/media_content_stories_cubit_state.dart';

class MediaContentStoriesCubit extends Cubit<MediaContentStoriesCubitState> {
  MediaContentStoriesCubit() : super(const MediaContentStoriesCubitState.loading());

  MediaContentStoriesState _current = const MediaContentStoriesState();

  void init(List<MediaContent> stories, Color? color) {
    _current = _current.copyWith(
      stories: stories,
      color: color,
    );

    emit(MediaContentStoriesCubitState.ready(_current));
  }

  void goToNext() {
    final index =
        _current.index == _current.stories.length - 1 ? _current.index : _current.index + 1;

    _change(index);
  }

  void goToPrevious() {
    final index = _current.index == 0 ? 0 : _current.index - 1;

    _change(index);
  }

  void goTo(int index) {
    _change(index);
  }

  void _change(int index) {
    _current = _current.copyWith(index: index);

    emit(MediaContentStoriesCubitState.ready(_current));
  }
}
