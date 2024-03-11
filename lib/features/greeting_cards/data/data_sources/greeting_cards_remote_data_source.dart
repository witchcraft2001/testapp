// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/repository_exception.dart';
import 'package:terralinkapp/core/http/api_routes.dart';
import 'package:terralinkapp/core/http/services/http_service.dart';
import 'package:terralinkapp/core/services/admin_panel_api_service.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/features/greeting_cards/data/dao/api_greeting_template/api_greeting_template_dao.dart';

abstract class GreetingCardsRemoteDataSource {
  Future<List<ApiGreetingTemplateDao>> getAll();
}

@LazySingleton(
  as: GreetingCardsRemoteDataSource,
  env: [Environment.dev, Environment.prod],
)
class GreetingCardsRemoteDataSourceImpl extends GreetingCardsRemoteDataSource {
  final AdminPanelApiService _adminPanelService;
  final LogService _logService;

  GreetingCardsRemoteDataSourceImpl(
    this._adminPanelService,
    this._logService,
  );

  @override
  Future<List<ApiGreetingTemplateDao>> getAll() async {
    try {
      final response = await _adminPanelService.request(
        url: ApiRoutes.greetingCardsTemplates,
        method: Method.GET,
      );

      if (response.statusCode == 200) {
        final List<ApiGreetingTemplateDao> templates =
            List.from(response.data).map((item) => ApiGreetingTemplateDao.fromJson(item)).toList();

        return templates;
      } else {
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
    }
  }
}
