// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/services/http/overrides/api_http_overrides.dart';
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/tl_app.dart';
import 'firebase_options.dart';
import 'injection.dart';
import 'main_common.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies(Environment.prod);

  // Needed to ignore certificate verification to host
  HttpOverrides.global = getIt<ApiHttpOverrides>();

  // Initialization of Firebase Crashlytics
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  getIt<LogService>().init(true);

  // All initialization code for all build targets will be added to main_common.dart#commonInit()
  await commonInit();

  // Add initialization code for Release build only here:

  runApp(const TlApp());
}
