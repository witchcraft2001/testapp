// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/repositories/di_scope_repository.dart';
import 'package:terralinkapp/features/news/data/data_sources/news_cached_data_source.dart';
import 'package:terralinkapp/features/news/data/mappers/api_news_dao_mapper.dart';
import 'package:terralinkapp/features/news/data/repositories/news_repository.dart';
import 'package:terralinkapp/features/news/domain/entities/api_news.dart';
import 'package:terralinkapp/features/settings/data/use_cases/get_news_api_base_url_use_case.dart';

@Injectable(
  as: NewsRepository,
  env: [Environment.dev, Environment.prod],
  scope: Scopes.authScope,
)
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
