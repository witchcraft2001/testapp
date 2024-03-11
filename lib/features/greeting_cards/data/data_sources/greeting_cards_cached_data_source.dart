// Package imports:
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

// Project imports:
import 'package:terralinkapp/core/services/user_service/user_service.dart';
import 'package:terralinkapp/core/utils/formatters.dart';
import 'package:terralinkapp/features/greeting_cards/data/dao/api_greeting_template/api_greeting_template_dao.dart';
import 'package:terralinkapp/features/greeting_cards/data/data_sources/greeting_cards_remote_data_source.dart';

abstract class GreetingCardsCachedDataSource {
  Future<List<ApiGreetingTemplateDao>> getAll();

  void clearCache();
}

@LazySingleton(
  as: GreetingCardsCachedDataSource,
  env: [Environment.dev, Environment.prod],
)
class GreetingCardsCachedDataSourceImpl implements GreetingCardsCachedDataSource {
  final GreetingCardsRemoteDataSource _remoteDataSource;
  final UserService _userService;
  final List<ApiGreetingTemplateDao> _templates;
  final Lock _lock;

  GreetingCardsCachedDataSourceImpl({
    required GreetingCardsRemoteDataSource remoteDataSource,
    required UserService userService,
  }) : this._init(
          remoteDataSource: remoteDataSource,
          userService: userService,
          templates: <ApiGreetingTemplateDao>[],
          lock: Lock(),
        );

  const GreetingCardsCachedDataSourceImpl._init({
    required GreetingCardsRemoteDataSource remoteDataSource,
    required UserService userService,
    required List<ApiGreetingTemplateDao> templates,
    required Lock lock,
  })  : _lock = lock,
        _templates = templates,
        _remoteDataSource = remoteDataSource,
        _userService = userService;

  @override
  Future<List<ApiGreetingTemplateDao>> getAll() async {
    if (_templates.isEmpty) {
      await _lock.synchronized(() async {
        final templates = await _remoteDataSource.getAll();

        if (templates.isNotEmpty) _setFiltered(templates);
      });
    }

    return _templates;
  }

  @override
  void clearCache() {
    _templates.clear();
  }

  void _setFiltered(List<ApiGreetingTemplateDao> templates) {
    final user = _userService.getUser()?.login.toLowerCase();

    final filtered = templates.where((template) {
      final isOpenAccess = template.access == ApiGreetingTemplateDaoAccess.open;

      // Проверка, что текущий пользователь находится в списке тех, кому разрешен ограниченный доступ
      final isAllowedLimitedAccess = user != null &&
          template.access == ApiGreetingTemplateDaoAccess.limited &&
          template.accessUsers.map((e) => getLoginWithoutDomain(e.login)).toList().contains(user);

      return template.published && (isOpenAccess || isAllowedLimitedAccess);
    }).toList();

    _templates.addAll(filtered);
  }
}
