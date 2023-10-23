// Package imports:
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SettingsDataSource {
  Future<bool?> getBool(String parameter);
  Future<String?> getString(String parameter);
  Future<bool> setBool(String parameter, bool value);
  Future<bool> setString(String parameter, String value);
}

@LazySingleton(as: SettingsDataSource, env: [Environment.dev, Environment.prod])
class SettingsDataSourceImpl extends SettingsDataSource {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Future<bool?> getBool(String parameter) async {
    final SharedPreferences prefs = await _prefs;

    return prefs.getBool(parameter);
  }

  @override
  Future<bool> setBool(String parameter, bool value) async {
    final SharedPreferences prefs = await _prefs;

    return prefs.setBool(parameter, value);
  }

  @override
  Future<String?> getString(String parameter) async {
    final SharedPreferences prefs = await _prefs;

    return prefs.getString(parameter);
  }

  @override
  Future<bool> setString(String parameter, String value) async {
    final SharedPreferences prefs = await _prefs;

    return prefs.setString(parameter, value);
  }
}

class SettingsRepositoryKeys {
  static const String darkMode = 'is_dark_mode_enabled';
  static const String systemMode = 'is_system_mode_enabled';

  static const String billingNotification = 'is_billing_notification_enabled';

  static const String avatar = 'profile_avatar';
  static const String userId = 'user_id';
  static const String userRegion = 'user_region';

  static const String newsApiBaseUrl = 'news_api_base_url';

  static const String tasksSBSApiBaseUrl = 'tasks_sbs_api_base_url';
  // ToDo 57 Подумать над изменением ключа
  static const String tasksEASApiBaseUrl = 'tasks_api_base_url';

  static const String wsUrl = 'ws_url';

  static const String msalClientId = 'msal_client_d';
  static const String msalScope = 'msal_scope';
  static const String msalTenantId = 'msal_tenant_id';
}
