// Package imports:
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String _welcomePassedStatusKeyPrefix = 'welcome_passed_';

abstract class WelcomeDataSource {
  Future<bool> isPassed(String userId);
  Future<void> setPassedStatus(bool value, String userId);
}

@LazySingleton(
  as: WelcomeDataSource,
  env: [Environment.dev, Environment.prod],
)
class WelcomeDataSourceLocalImpl extends WelcomeDataSource {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Future<bool> isPassed(String userId) async {
    final SharedPreferences prefs = await _prefs;

    return (prefs.getBool(_welcomePassedStatusKeyPrefix + userId) ?? false);
  }

  @override
  Future<void> setPassedStatus(bool value, String userId) async {
    final SharedPreferences prefs = await _prefs;

    await prefs.setBool(_welcomePassedStatusKeyPrefix + userId, value);
  }
}
