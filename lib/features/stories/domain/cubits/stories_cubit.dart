// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/features/media_content/domain/entities/media_content.dart';
import 'package:terralinkapp/features/stories/domain/states/stories_cubit_state.dart';

class StoriesCubit extends Cubit<StoriesCubitState> {
  StoriesCubit() : super(const StoriesCubitState.loading());

  StoriesState _current = const StoriesState();

  void init(List<MediaContent> stories, Color? color) {
    _current = _current.copyWith(
      stories: stories,
      color: color,
    );

    emit(StoriesCubitState.ready(_current));
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

  void _change(int index) {
    _current = _current.copyWith(index: index);

    emit(StoriesCubitState.ready(_current));
  }
}
