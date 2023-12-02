// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

abstract class PushNotificationsProvider {
  Future<String?> get token;
  Future<bool> get isNotificationsGranted;
  String? get tokenSync;
}

@LazySingleton(
  as: PushNotificationsProvider,
  env: [Environment.dev, Environment.prod],
)
class PushNotificationsProviderImpl extends PushNotificationsProvider {
  String? _token;
  var _isPermissionsGranted = false;
  final lock = Lock();

  @override
  Future<String?> get token async {
    return _token ??= await lock.synchronized(() async => _init());
  }

  Future<String?> _init() async {
    if (_token == null) {
      await Firebase.initializeApp();
      // For iOS request permission first.
      NotificationSettings settings = await FirebaseMessaging.instance.requestPermission();
      _isPermissionsGranted = settings.authorizationStatus == AuthorizationStatus.authorized;

      try {
        _token = await FirebaseMessaging.instance.getToken();
      } catch (e, _) {
        if (kDebugMode) {
          print(e);
        }
      }

      if (kDebugMode) {
        print("FirebaseMessaging token: $token");
      }
    }

    return _token;
  }

  @override
  Future<bool> get isNotificationsGranted async {
    final _ = await token;

    return _isPermissionsGranted;
  }

  @override
  String? get tokenSync => _token;
}
