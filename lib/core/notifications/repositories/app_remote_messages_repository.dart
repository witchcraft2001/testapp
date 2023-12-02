// Dart imports:
import 'dart:async';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/iterable_extensions.dart';
import 'package:terralinkapp/core/notifications/entities/app_remote_message.dart';

// ToDo 115 Если в будущем будет решено внедрить "центр уведомлений", то можно будет собирать приходящие уведомления в бд, а после из нее показывать пользователю
abstract class AppRemoteMessagesRepository {
  void add(AppRemoteMessage message);
  void remove(AppRemoteMessage message);
  AppRemoteMessage? get(int id);
}

@LazySingleton(
  as: AppRemoteMessagesRepository,
  env: [Environment.dev, Environment.prod],
)
class PushNotificationsRepositoryImpl extends AppRemoteMessagesRepository {
  static List<AppRemoteMessage> messages = [];

  @override
  void add(AppRemoteMessage message) async {
    messages.add(message);
  }

  @override
  Future<void> remove(AppRemoteMessage message) async {
    messages.remove(message);
  }

  @override
  AppRemoteMessage? get(int id) {
    return messages.firstWhereOrNull((message) => message.id == id);
  }
}
