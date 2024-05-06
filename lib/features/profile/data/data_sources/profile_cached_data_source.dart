// Package imports:
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

// Project imports:
import 'package:terralinkapp/features/profile/data/dao/api_profile_dao.dart';
import 'package:terralinkapp/features/profile/data/data_sources/profile_remote_data_source.dart';

abstract class ProfileCachedDataSource {
  Future<ApiProfileDao?> get();

  void clearCache();
}

@LazySingleton(
  as: ProfileCachedDataSource,
  env: [Environment.dev, Environment.prod],
)
class ProfileCachedDataSourceImpl implements ProfileCachedDataSource {
  final ProfileRemoteDataSource _dataSource;

  ProfileCachedDataSourceImpl(this._dataSource);

  final Lock _lock = Lock();
  ApiProfileDao? _profile;

  @override
  Future<ApiProfileDao?> get() async {
    await _lock.synchronized(() async {
      if (_profile == null) {
        final profile = await _dataSource.get();

        _profile = profile;
      }
    });

    return _profile;
  }

  @override
  void clearCache() {
    _profile = null;
  }
}
