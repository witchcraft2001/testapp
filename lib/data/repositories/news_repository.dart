// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/common/api_routes.dart';
import 'package:terralinkapp/data/models/responses/api_news/api_news.dart';
import 'package:terralinkapp/data/repositories/exceptions/repository_exception.dart';
import 'package:terralinkapp/data/services/http/http_service.dart';
import 'package:terralinkapp/data/services/http/news_api_service.dart';

abstract class NewsRepository {
  Future<List<ApiNews>> get();
}

@LazySingleton(as: NewsRepository, env: [Environment.dev, Environment.prod])
class NewsRepositoryImpl extends NewsRepository {
  final NewsApiService _newService;

  NewsRepositoryImpl(this._newService);

  @override
  Future<List<ApiNews>> get() async {
    try {
      final response = await _newService.request(
        url: ApiRoutes.news,
        method: Method.GET,
      );

      if (response.statusCode == 200) {
        final List<ApiNews> news = List.from(response.data)
            .map((item) => ApiNews.fromJson(item))
            .where((item) => item.published)
            .toList();

        return news;
      } else {
        throw RepositoryException('Failed to load');
      }
    } on DioError catch (e) {
      if (e.response == null) {
        rethrow;
      } else {
        throw RepositoryException(e.message, statusCode: e.response?.statusCode);
      }
    }
  }
}
