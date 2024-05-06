// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/ui/states/common_state_lite.dart';
import 'package:terralinkapp/features/onboarding_stories/presentation/cubits/onboarding_stories_ready_data.dart';
import 'package:terralinkapp/features/onboarding_stories_content/domain/entities/onboarding_content.dart';

class MediaContentStoriesCubit extends Cubit<CommonStateLite<MediaContentStoriesReadyData>> {
  MediaContentStoriesCubit() : super(const CommonStateLite.init());

  MediaContentStoriesReadyData _current = const MediaContentStoriesReadyData();

  void init(List<OnboardingContent> stories, Color? color) {
    _current = _current.copyWith(
      stories: stories,
      color: color,
    );

    emit(CommonStateLite.ready(_current));
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

    emit(CommonStateLite.ready(_current));
  }
}
