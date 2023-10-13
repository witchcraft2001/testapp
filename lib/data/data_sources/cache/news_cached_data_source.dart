// Package imports:
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/remote/news_remote_data_source.dart';
import 'package:terralinkapp/data/models/responses/api_news/api_news_dao.dart';

abstract class NewsCachedDataSource {
  Future<List<ApiNewsDao>> getAll();

  void clearCache();
}

@LazySingleton(as: NewsCachedDataSource, env: [Environment.dev, Environment.prod])
class NewsCachedDataSourceImpl implements NewsCachedDataSource {
  final NewsRemoteDataSource _newsRepository;
  final List<ApiNewsDao> _news;
  final Lock _lock;

  NewsCachedDataSourceImpl({required NewsRemoteDataSource newsRepository})
      : this._init(
          newsRepository: newsRepository,
          news: <ApiNewsDao>[],
          lock: Lock(),
        );

  const NewsCachedDataSourceImpl._init({
    required NewsRemoteDataSource newsRepository,
    required List<ApiNewsDao> news,
    required Lock lock,
  })  : _lock = lock,
        _news = news,
        _newsRepository = newsRepository;

  @override
  Future<List<ApiNewsDao>> getAll() async {
    if (_news.isEmpty) {
      await _lock.synchronized(() async {
        if (_news.isEmpty) {
          final news = await _newsRepository.get();

          _news.addAll(news);
        }
      });
    }

    return _news;
  }

  @override
  void clearCache() {
    _news.clear();
  }
}
