// Project imports:
abstract class SettingsRepository {
  Future<String?> getUserId();

  Future<bool> setUserId(String id);

  Future<String> getUserProfileAvatar();

  Future<bool> setUserProfileAvatar(String path);
}
