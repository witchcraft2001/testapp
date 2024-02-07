// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/users/data/data_sources/users_cached_data_source.dart';
import 'package:terralinkapp/features/users/presentation/cubits/users_state.dart';

abstract class UsersRepository {
  Future<UsersReadyData?> get({String? search, int? page});
  void clearCache();
}

@Injectable(
  as: UsersRepository,
  env: [Environment.dev, Environment.prod],
)
class UsersRepositoryImpl implements UsersRepository {
  final UsersCachedDataSource _dataSource;

  UsersRepositoryImpl({
    required UsersCachedDataSource dataSource,
  }) : _dataSource = dataSource;

  @override
  Future<UsersReadyData?> get({String? search, int? page}) async {
    return await _dataSource.get(search: search, page: page);
  }

  @override
  void clearCache() {
    _dataSource.clearCache();
  }
}
