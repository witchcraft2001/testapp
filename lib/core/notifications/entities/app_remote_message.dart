// Package imports:
import 'package:firebase_messaging/firebase_messaging.dart';

class AppRemoteMessage {
  final int id;
  final RemoteMessage message;

  AppRemoteMessage({
    required this.id,
    required this.message,
  });
}
