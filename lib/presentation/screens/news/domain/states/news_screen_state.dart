// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/presentation/screens/news/domain/states/news_state.dart';

part 'news_screen_state.freezed.dart';

@freezed
class NewsScreenState with _$NewsScreenState {
  const factory NewsScreenState.loading() = NewsScreenStateLoading;

  const factory NewsScreenState.loaded(NewsState data) = NewsScreenStateLoaded;

  const factory NewsScreenState.error(String message) = NewsScreenStateError;
}
