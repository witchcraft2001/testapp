// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class LogService {
  Future init(bool enabled) async {
    if (enabled) {
      FlutterError.onError = (errorDetails) {
        FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
      };
      PlatformDispatcher.instance.onError = (error, stack) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);

        return true;
      };
    } else {
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
    }
  }

  Future<void> recordError(
    dynamic exception,
    StackTrace? stack, {
    dynamic reason,
    Iterable<Object> information = const [],
    bool? printDetails,
    bool fatal = false,
  }) async {
    await FirebaseCrashlytics.instance.recordError(
      exception,
      stack,
      reason: reason,
      information: information,
      printDetails: printDetails,
      fatal: fatal,
    );
  }

  Future<void> log(String message) async {
    await FirebaseCrashlytics.instance.log(message);
  }
}
