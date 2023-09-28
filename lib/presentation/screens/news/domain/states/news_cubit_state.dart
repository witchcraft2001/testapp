// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/domain/entities/api_news.dart';

part 'news_cubit_state.freezed.dart';

@freezed
class NewsCubitState with _$NewsCubitState {
  const factory NewsCubitState.loading() = _NewsCubitStateLoading;

  const factory NewsCubitState.ready(NewsState data) = _NewsCubitStateReady;

  const factory NewsCubitState.error(String message) = _NewsCubitStateError;
}

class NewsState {
  final List<ApiNews> news;

  const NewsState({
    this.news = const [],
  });

  NewsState copyWith({
    List<ApiNews>? news,
  }) =>
      NewsState(
        news: news ?? this.news,
      );
}
