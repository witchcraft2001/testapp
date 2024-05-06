// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/tl_app.dart';
import 'firebase_options.dart';
import 'injection.dart';
import 'main_common.dart';

Future<void> main() async {
  await runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await configureDependencies(Environment.prod);

      // Initialization of Firebase Crashlytics
      await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
      getIt<LogService>().init(true);

      // All initialization code for all build targets will be added to main_common.dart#commonInit()
      await commonInit();

      // Add initialization code for Release build only here:

      runApp(const TlApp());
    },
    (e, s) {
      if (!kDebugMode) {
        FirebaseCrashlytics.instance.recordError(e, s);
      }
    },
  );
}
