// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/common/api_routes.dart';
import 'package:terralinkapp/data/models/responses/api_news/api_news_dao.dart';
import 'package:terralinkapp/data/repositories/exceptions/repository_exception.dart';
import 'package:terralinkapp/data/services/http/http_service.dart';
import 'package:terralinkapp/data/services/http/news_api_service.dart';
import 'package:terralinkapp/data/services/log_service.dart';

abstract class NewsRemoteDataSource {
  Future<List<ApiNewsDao>> getAll();
}

@LazySingleton(as: NewsRemoteDataSource, env: [Environment.dev, Environment.prod])
class NewsRemoteDataSourceImpl extends NewsRemoteDataSource {
  final NewsApiService _newService;
  final LogService _logService;

  NewsRemoteDataSourceImpl(
    this._newService,
    this._logService,
  );

  @override
  Future<List<ApiNewsDao>> getAll() async {
    try {
      final response = await _newService.request(
        url: ApiRoutes.news,
        method: Method.GET,
      );

      if (response.statusCode == 200) {
        try {
          final List<ApiNewsDao> news = List.from(response.data)
              .map((item) => ApiNewsDao.fromJson(item))
              .where((item) => item.published)
              .toList();

          return news;
        } catch (e, st) {
          _logService.recordError(e, st);

          rethrow;
        }
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
