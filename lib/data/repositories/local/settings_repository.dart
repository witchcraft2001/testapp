// Package imports:
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SettingsRepository {
  Future<bool?> getBool(String parameter);
  Future<String?> getString(String parameter);
  Future<bool> setBool(String parameter, bool value);
  Future<bool> setString(String parameter, String value);
}

@LazySingleton(as: SettingsRepository, env: [Environment.dev, Environment.prod])
class SettingsRepositoryImpl extends SettingsRepository {
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
}
