// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/cache/news_cached_data_source.dart';
import 'package:terralinkapp/data/mappers/news/api_news_dao_mapper.dart';
import 'package:terralinkapp/data/repositories/di_scope_repository.dart';
import 'package:terralinkapp/data/use_cases/settings/get_news_api_base_url_use_case.dart';
import 'package:terralinkapp/domain/entities/api_news.dart';
import 'package:terralinkapp/domain/repositories/news_repository.dart';

@Injectable(as: NewsRepository, env: [Environment.dev, Environment.prod], scope: Scopes.authScope)
class NewsCachedRepository implements NewsRepository {
  final NewsCachedDataSource _dataSource;
  final GetNewsApiBaseUrlUseCase _getNewsApiBaseUrlUseCase;

  NewsCachedRepository({
    required NewsCachedDataSource dataSource,
    required GetNewsApiBaseUrlUseCase getNewsApiBaseUrlUseCase,
  })  : _dataSource = dataSource,
        _getNewsApiBaseUrlUseCase = getNewsApiBaseUrlUseCase;

  @override
  Future<List<ApiNews>> get() async {
    final url = _getNewsApiBaseUrlUseCase.run();

    return (await _dataSource.getAll()).map((n) => n.toDomain(url, url)).toList();
  }

  @override
  void clearCache() {
    _dataSource.clearCache();
  }
}
