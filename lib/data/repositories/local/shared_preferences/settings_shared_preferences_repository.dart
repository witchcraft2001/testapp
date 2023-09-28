// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/local/shared_preferences/settings_data_source.dart';
import 'package:terralinkapp/domain/repositories/settings_repository.dart';

@LazySingleton(as: SettingsRepository, env: [Environment.dev, Environment.prod])
class SettingsSharedPreferencesRepository implements SettingsRepository {
  final SettingsDataSource _dataSource;

  SettingsSharedPreferencesRepository({
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
