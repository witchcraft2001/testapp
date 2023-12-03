// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/news/data/repositories/news_repository.dart';

abstract class ClearCacheNewsUseCase {
  void run();
}

@Injectable(
  as: ClearCacheNewsUseCase,
  env: [Environment.dev, Environment.prod],
)
class ClearCacheNewsUseCaseImpl extends ClearCacheNewsUseCase {
  final NewsRepository _newsRepository;

  ClearCacheNewsUseCaseImpl(this._newsRepository);

  @override
  void run() {
    _newsRepository.clearCache();
  }
}
