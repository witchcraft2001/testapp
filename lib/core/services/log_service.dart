// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/core/services/user_service/user_service.dart';

@LazySingleton(
  env: [Environment.dev, Environment.prod],
)
class LogService {
  final UserService _userService;

  LogService(this._userService);

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
    Iterable<Object> info = [...information];
    final userEmail = _userService.getUser()?.email;

    if (userEmail != null) {
      info = [...info, userEmail];
    }

    if (exception is TlException) {
      info = [...info, exception.type];
    }

    await FirebaseCrashlytics.instance.recordError(
      exception,
      stack,
      reason: reason,
      information: info,
      printDetails: printDetails,
      fatal: fatal,
    );
  }

  Future<void> log(String message) async {
    await FirebaseCrashlytics.instance.log(message);
  }
}
