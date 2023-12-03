// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/tl_app.dart';
import 'firebase_options.dart';
import 'injection.dart';
import 'main_common.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies(Environment.dev);

  // Initialization of Firebase Crashlytics
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  getIt<LogService>().init(false);

  await commonInit();

  // Add initialization code for Debug build only here:

  runApp(const TlApp());
}
