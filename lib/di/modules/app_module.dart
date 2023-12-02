// Package imports:
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

// Project imports:
import 'package:terralinkapp/core/database/db_provider.dart';

@module
abstract class AppModule {
  @preResolve
  Future<Database> get provideDb => DbProvider.init();

  @preResolve
  Future<SharedPreferences> get providePrefs => SharedPreferences.getInstance();
}
