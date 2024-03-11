// Package imports:
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/media_content/domain/entities/media_content.dart';

part 'media_content_cubit_state.freezed.dart';

@freezed
class MediaContentCubitState with _$MediaContentCubitState {
  const factory MediaContentCubitState.loading() = _MediaContentCubitStateLoading;

  const factory MediaContentCubitState.ready(MediaContentState data) = _MediaContentCubitStateReady;
}

class MediaContentState extends Equatable {
  const MediaContentState({
    required this.content,
  });

  final MediaContent content;

  MediaContentState copyWith({
    MediaContent? content,
  }) =>
      MediaContentState(
        content: content ?? this.content,
      );

  @override
  List<Object?> get props => [content];
}
