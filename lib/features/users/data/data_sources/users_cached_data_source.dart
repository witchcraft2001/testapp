// Dart imports:
import 'dart:async';

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

// Project imports:
import 'package:terralinkapp/features/settings/domain/use_cases/get_admin_panel_api_base_url_use_case.dart';
import 'package:terralinkapp/features/users/data/data_sources/users_remote_data_source.dart';
import 'package:terralinkapp/features/users/data/mappers/api_user_dao_mapper.dart';
import 'package:terralinkapp/features/users/presentation/cubits/users_ready_data.dart';

abstract class UsersCachedDataSource {
  Future<UsersReadyData?> get({String? search, int? page});

  void clearCache();
}

@LazySingleton(
  as: UsersCachedDataSource,
  env: [Environment.dev, Environment.prod],
)
class UsersCachedDataSourceImpl extends UsersCachedDataSource {
  final UsersRemoteDataSource _remoteDataSource;
  final GetAdminPanelApiBaseUrlUseCase _getApiBaseUrlUseCase;

  final Lock _lock = Lock();
  UsersReadyData? _current;

  UsersCachedDataSourceImpl(
    this._remoteDataSource,
    this._getApiBaseUrlUseCase,
  );

  @override
  Future<UsersReadyData?> get({String? search, int? page}) async {
    if (_current != null && page != null && page > 1 && _current!.total < (page - 1) * 20) {
      return null;
    }

    await _lock.synchronized(() async {
      final users = await _remoteDataSource.getAll(search: search, page: page);

      final url = _getApiBaseUrlUseCase();

      _current = UsersReadyData(
        users: users.results.map((e) => e.toDomain(url)).toList(),
        page: page!,
        total: users.count,
      );
    });

    return _current;
  }

  @override
  void clearCache() {
    _current = null;
  }
}
