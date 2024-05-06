// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/system_settings/data/dao/system_settings_dao.dart';
import 'package:terralinkapp/features/system_settings/data/data_sources/system_settings_cached_data_source.dart';

abstract class SystemSettingsRepository {
  Future<SystemSettingsDao> get();
}

@LazySingleton(
  as: SystemSettingsRepository,
  env: [Environment.dev, Environment.prod],
)
class SystemSettingsRepositoryImpl implements SystemSettingsRepository {
  final SystemSettingsCachedDataSource _dataSource;

  SystemSettingsRepositoryImpl(this._dataSource);

  @override
  Future<SystemSettingsDao> get() async {
    final settings = await _dataSource.get();

    return settings;
  }
}
