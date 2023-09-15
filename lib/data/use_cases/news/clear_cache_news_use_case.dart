// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/repositories/local/cached_news_repository.dart';

abstract class ClearCacheNewsUseCase {
  void run();
}

@LazySingleton(as: ClearCacheNewsUseCase, env: [Environment.dev, Environment.prod])
class ClearCacheNewsUseCaseImpl extends ClearCacheNewsUseCase {
  final CachedNewsRepository _newsRepository;

  ClearCacheNewsUseCaseImpl(this._newsRepository);

  @override
  void run() {
    _newsRepository.clearCache();
  }
}
