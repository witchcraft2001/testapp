// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/settings/data/data_sources/settings_data_source.dart';

abstract class SettingsRepository {
  Future<String?> getUserId();
  Future<String> getUserProfileAvatar();

  Future<bool> setUserId(String id);
  Future<bool> setUserProfileAvatar(String path);
}

@LazySingleton(
  as: SettingsRepository,
  env: [Environment.dev, Environment.prod],
)
class SettingsRepositoryImpl implements SettingsRepository {
  final SettingsDataSource _dataSource;

  SettingsRepositoryImpl({
    required SettingsDataSource dataSource,
  }) : _dataSource = dataSource;

  @override
  Future<String?> getUserId() async {
    return await _dataSource.getString(SettingsRepositoryKeys.userId);
  }

  @override
  Future<bool> setUserId(String id) async {
    return await _dataSource.setString(SettingsRepositoryKeys.userId, id);
  }

  @override
  Future<String> getUserProfileAvatar() async {
    await _dataSource.getString(SettingsRepositoryKeys.avatar);

    final String? avatarPath = await _dataSource.getString(SettingsRepositoryKeys.avatar);

    return avatarPath ?? '';
  }

  @override
  Future<bool> setUserProfileAvatar(String path) async {
    return await _dataSource.setString(SettingsRepositoryKeys.avatar, path);
  }
}
