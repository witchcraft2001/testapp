// Package imports:
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'injection.config.dart';

final getIt = GetIt.instance;

// 1. update pubspec dependencies
// 2. start cmd: flutter packages pub run build_runner build
@injectableInit
Future<void> configureDependencies(String environment) async =>
    await getIt.init(environment: environment);
