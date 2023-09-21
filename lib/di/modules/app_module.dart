// Package imports:
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

// Project imports:
import 'package:terralinkapp/data/providers/db_provider.dart';

@module
abstract class AppModule {
  @preResolve
  Future<Database> get provideDb => DbProvider.init();
}
