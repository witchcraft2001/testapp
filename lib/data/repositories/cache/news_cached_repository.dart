// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/common/constants.dart';
import 'package:terralinkapp/data/data_sources/cache/news_cached_data_source.dart';
import 'package:terralinkapp/data/mappers/api_news_dao_mapper.dart';
import 'package:terralinkapp/data/repositories/di_scope_repository.dart';
import 'package:terralinkapp/domain/entities/api_news.dart';
import 'package:terralinkapp/domain/repositories/news_repository.dart';

@Injectable(as: NewsRepository, env: [Environment.dev, Environment.prod], scope: Scopes.authScope)
class NewsCachedRepository implements NewsRepository {
  final NewsCachedDataSource _dataSource;
  final Constants _constants;

  NewsCachedRepository({
    required NewsCachedDataSource dataSource,
    required Constants constants,
  })  : _dataSource = dataSource,
        _constants = constants;

  @override
  Future<List<ApiNews>> news() async {
    return (await _dataSource.get())
        .map((n) => n.toDomain( _constants.getNewsApiBaseUrl(),  _constants.getNewsApiBaseUrl()))
        .toList();
  }

  @override
  void clearCache() {
    _dataSource.clearCache();
  }
}
