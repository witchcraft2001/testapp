// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/greeting_cards/data/data_sources/greeting_cards_cached_data_source.dart';
import 'package:terralinkapp/features/greeting_cards/data/mappers/api_greeting_template_dao_mapper.dart';
import 'package:terralinkapp/features/greeting_cards/domain/entities/api_greeting_template.dart';
import 'package:terralinkapp/features/media_content/data/services/media_content_parsing_tags_service.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_admin_panel_api_base_url_use_case.dart';

abstract class GreetingCardsRepository {
  Future<List<ApiGreetingTemplate>> get();

  void clearCache();
}

@Injectable(
  as: GreetingCardsRepository,
  env: [Environment.dev, Environment.prod],
)
class GreetingCardsCachedRepository implements GreetingCardsRepository {
  final GreetingCardsCachedDataSource _dataSource;
  final GetAdminPanelApiBaseUrlUseCase _getApiBaseUrlUseCase;
  final MediaContentParsingTagsService _service;

  GreetingCardsCachedRepository({
    required GreetingCardsCachedDataSource dataSource,
    required GetAdminPanelApiBaseUrlUseCase getApiBaseUrlUseCase,
    required MediaContentParsingTagsService service,
  })  : _dataSource = dataSource,
        _getApiBaseUrlUseCase = getApiBaseUrlUseCase,
        _service = service;

  @override
  Future<List<ApiGreetingTemplate>> get() async {
    final String url = _getApiBaseUrlUseCase();

    final templates = await _dataSource.getAll();

    return templates.map((n) => n.toDomain(_service, url)).toList();
  }

  @override
  void clearCache() {
    _dataSource.clearCache();
  }
}
