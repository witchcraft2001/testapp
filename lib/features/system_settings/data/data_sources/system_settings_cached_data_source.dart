// Package imports:
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

// Project imports:
import 'package:terralinkapp/features/system_settings/data/dao/system_settings_dao.dart';
import 'package:terralinkapp/features/system_settings/data/data_sources/system_settings_remote_data_source.dart';

abstract class SystemSettingsCachedDataSource {
  Future<SystemSettingsDao> get();
  void clearCache();
}

@LazySingleton(
  as: SystemSettingsCachedDataSource,
  env: [Environment.dev, Environment.prod],
)
class SystemSettingsCachedDataSourceImpl implements SystemSettingsCachedDataSource {
  final SystemSettingsRemoteDataSource _dataSource;

  SystemSettingsCachedDataSourceImpl(this._dataSource);

  final Lock _lock = Lock();
  SystemSettingsDao? _settings;

  @override
  Future<SystemSettingsDao> get() async {
    await _lock.synchronized(() async {
      if (_settings == null) {
        final settings = await _dataSource.get();

        _settings = settings;
      }
    });

    return _settings ?? const SystemSettingsDao();
  }

  @override
  void clearCache() {
    _settings = null;
  }
}
