// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/repository_exception.dart';
import 'package:terralinkapp/core/http/api_routes.dart';
import 'package:terralinkapp/core/http/services/http_service.dart';
import 'package:terralinkapp/core/services/admin_panel_api_service.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/features/news/data/dao/api_news_dao.dart';

abstract class NewsRemoteDataSource {
  Future<List<ApiNewsDao>> getAll();
}

@LazySingleton(
  as: NewsRemoteDataSource,
  env: [Environment.dev, Environment.prod],
)
class NewsRemoteDataSourceImpl extends NewsRemoteDataSource {
  final AdminPanelApiService _adminPanelService;
  final LogService _logService;

  NewsRemoteDataSourceImpl(
    this._adminPanelService,
    this._logService,
  );

  @override
  Future<List<ApiNewsDao>> getAll() async {
    try {
      final response = await _adminPanelService.request(
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
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
    }
  }
}
