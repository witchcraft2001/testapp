// Package imports:
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

// Project imports:
import 'package:terralinkapp/data/models/responses/api_news/api_news.dart';
import 'package:terralinkapp/data/repositories/news_repository.dart';

abstract class CachedNewsRepository {
  Future<List<ApiNews>> get();

  void clearCache();
}

@LazySingleton(as: CachedNewsRepository, env: [Environment.dev, Environment.prod])
class CachedNewsRepositoryImpl extends CachedNewsRepository {
  final NewsRepository _newsRepository;
  var lock = Lock();

  final List<ApiNews> _news = List.empty(growable: true);

  CachedNewsRepositoryImpl(this._newsRepository);

  @override
  Future<List<ApiNews>> get() async {
    if (_news.isEmpty) {
      await lock.synchronized(() async {
        if (_news.isEmpty) {
          _news.addAll(await _newsRepository.get());
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
