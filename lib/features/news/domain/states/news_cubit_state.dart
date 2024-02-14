// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/features/news/domain/entities/api_news.dart';

part 'news_cubit_state.freezed.dart';

@freezed
class NewsCubitState with _$NewsCubitState {
  const factory NewsCubitState.loading() = _Loading;
  const factory NewsCubitState.ready(NewsState data) = _Ready;
  const factory NewsCubitState.error(String message, TlExceptionType type) = _Error;
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
