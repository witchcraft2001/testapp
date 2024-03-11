// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/repositories/di_scope_repository.dart';
import 'package:terralinkapp/features/media_content/data/services/media_content_parsing_tags_service.dart';
import 'package:terralinkapp/features/news/data/data_sources/news_cached_data_source.dart';
import 'package:terralinkapp/features/news/data/mappers/api_news_dao_mapper.dart';
import 'package:terralinkapp/features/news/data/repositories/news_repository.dart';
import 'package:terralinkapp/features/news/domain/entities/api_news.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_admin_panel_api_base_url_use_case.dart';

@Injectable(
  as: NewsRepository,
  env: [Environment.dev, Environment.prod],
  scope: Scopes.authScope,
)
class NewsCachedRepository implements NewsRepository {
  final NewsCachedDataSource _dataSource;
  final GetAdminPanelApiBaseUrlUseCase _getApiBaseUrlUseCase;
  final MediaContentParsingTagsService _service;

  NewsCachedRepository({
    required NewsCachedDataSource dataSource,
    required GetAdminPanelApiBaseUrlUseCase getApiBaseUrlUseCase,
    required MediaContentParsingTagsService service,
  })  : _dataSource = dataSource,
        _getApiBaseUrlUseCase = getApiBaseUrlUseCase,
        _service = service;

  @override
  Future<List<ApiNews>> get() async {
    final String url = _getApiBaseUrlUseCase();

    return (await _dataSource.getAll()).map((n) => n.toDomain(_service, url, url)).toList();
  }

  @override
  void clearCache() {
    _dataSource.clearCache();
  }
}
