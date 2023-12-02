// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/repository_exception.dart';
import 'package:terralinkapp/core/http/api_routes.dart';
import 'package:terralinkapp/core/http/services/http_service.dart';
import 'package:terralinkapp/features/news/data/dao/api_news_dao.dart';
import 'package:terralinkapp/features/news/data/services/news_api_service.dart';

abstract class NewsRemoteDataSource {
  Future<List<ApiNewsDao>> getAll();
}

@LazySingleton(
  as: NewsRemoteDataSource,
  env: [Environment.dev, Environment.prod],
)
class NewsRemoteDataSourceImpl extends NewsRemoteDataSource {
  final NewsApiService _newService;

  NewsRemoteDataSourceImpl(this._newService);

  @override
  Future<List<ApiNewsDao>> getAll() async {
    try {
      final response = await _newService.request(
        url: ApiRoutes.news,
        method: Method.GET,
      );

      if (response.statusCode == 200) {
        final List<ApiNewsDao> news = List.from(response.data)
            .map((item) => ApiNewsDao.fromJson(item))
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
        throw RepositoryException(
          e.message,
          statusCode: e.response?.statusCode,
        );
      }
    }
  }
}
