// Project imports:
import 'package:terralinkapp/features/news/domain/entities/api_news.dart';

class NewsReadyData {
  final List<ApiNews> news;

  const NewsReadyData({
    this.news = const [],
  });

  NewsReadyData copyWith({
    List<ApiNews>? news,
  }) =>
      NewsReadyData(
        news: news ?? this.news,
      );
}
