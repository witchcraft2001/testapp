// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/models/responses/api_news/api_news.dart';
import 'package:terralinkapp/data/repositories/local/cached_news_repository.dart';

abstract class GetNewsUseCase {
  Future<List<ApiNews>> run();
}

@LazySingleton(as: GetNewsUseCase, env: [Environment.dev, Environment.prod])
class GetNewsUseCaseImpl extends GetNewsUseCase {
  final CachedNewsRepository _newsRepository;

  GetNewsUseCaseImpl(this._newsRepository);

  @override
  Future<List<ApiNews>> run() async => await _newsRepository.get();
}
