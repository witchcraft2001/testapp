// Dart imports:
import 'dart:async';

// Package imports:
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/models/app/app_remote_message/app_remote_message.dart';
import 'package:terralinkapp/data/providers/navigator_key_provider.dart';
import 'package:terralinkapp/data/repositories/local/notifications/app_remote_messages_repository.dart';
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/data/services/timezone_service.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart';
import 'package:terralinkapp/presentation/navigation/app_routes.dart';

abstract class LocalNotificationsService {
  Future<void> init();
  Future<void> enableBilling();
  Future<void> cancelBilling();
  Future<void> showPush(RemoteMessage message);
  Future<void> openPush(RemoteMessage message);
}

@LazySingleton(
  as: LocalNotificationsService,
  env: [Environment.dev, Environment.prod],
)
class LocalNotificationsServiceImpl extends LocalNotificationsService {
  final NavigatorKeyProvider _navigatorKeyProvider;
  final AppRemoteMessagesRepository _appRemoteMessagesRepository;
  final LogService _logService;

  LocalNotificationsServiceImpl(
    this._navigatorKeyProvider,
    this._appRemoteMessagesRepository,
    this._logService,
  );

  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // ToDo поменять ассет для уведомлений на андроиде
  static const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('ic_launcher_notification');

  static final DarwinInitializationSettings initializationSettingsDarwin =
      DarwinInitializationSettings(
    requestAlertPermission: false,
    requestBadgePermission: false,
    requestSoundPermission: false,
    onDidReceiveLocalNotification: (
      int id,
      String? title,
      String? body,
      String? payload,
    ) async {},
  );

  // Billing
  static int billingId = 0;

  static const AndroidNotificationDetails billingAndroidDetails = AndroidNotificationDetails(
    NotificationsKeys.billingChannelId,
    NotificationsKeys.billingChannelName,
    importance: Importance.max,
  );

  static const NotificationDetails billingDetails = NotificationDetails(
    android: billingAndroidDetails,
  );

  // Push
  static const AndroidNotificationDetails pushAndroidDetails = AndroidNotificationDetails(
    NotificationsKeys.pushChannelId,
    NotificationsKeys.pushChannelName,
    importance: Importance.max,
  );

  static const NotificationDetails pushDetails = NotificationDetails(
    android: pushAndroidDetails,
  );

  @override
  Future<void> init() async {
    final initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );

    await _notificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (response) async {
        final id = response.id;

        if (id != null) {
          final appMessage = _appRemoteMessagesRepository.get(id);

          if (appMessage != null) {
            openPush(appMessage.message).then(
              (_) => _appRemoteMessagesRepository.remove(appMessage),
            );
          }
        }
      },
    );

    await _initPush();
  }

  @override
  Future<void> enableBilling() async {
    await _notificationsPlugin.zonedSchedule(
      billingId,
      S.current.notificationBilling,
      S.current.notificationBillingMessage,
      getIt<TimeZoneService>().getBillingSchedule(),
      billingDetails,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
    );
  }

  @override
  Future<void> cancelBilling() async {
    await _notificationsPlugin.cancel(billingId);
  }

  Future<void> _initPush() async {
    // Если приложение закрыто:
    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message != null) openPush(message);
    });

    // Если приложение запущено и активно (foreground):
    FirebaseMessaging.onMessage.listen((message) async {
      await showPush(message);
    });

    // Если приложение запущено и свернуто (background):
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      openPush(message);
    });
  }

  @override
  Future<void> showPush(RemoteMessage message) async {
    final id = (message.sentTime ?? DateTime.now()).millisecondsSinceEpoch ~/ 1000;

    _appRemoteMessagesRepository.add(AppRemoteMessage(id: id, message: message));

    await _notificationsPlugin.show(
      id,
      message.notification?.title,
      message.notification?.body,
      pushDetails,
      payload: message.messageId,
    );
  }

  @override
  Future<void> openPush(RemoteMessage message) async {
    try {
      if (message.data.containsKey(NotificationsKeys.action)) {
        final action = message.data[NotificationsKeys.action];

        String? path;

        if (action == NotificationsKeys.actionNews) path = AppRoutes.news.name;
        if (action == NotificationsKeys.actionNewTask) path = AppRoutes.tasks.name;

        if (path != null) {
          // ToDo 115 в будущем добавится обработка objectId из data для перемещения на экран конкретной сущности
          final context = _navigatorKeyProvider.rootNavigatorKey.currentContext;

          if (context != null) {
            appNavigationService.goNamed(context, path);
          }
        }
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);
    }
  }
}

class NotificationsKeys {
  static const String action = 'action';
  static const String actionNews = 'NEWS';
  static const String actionNewTask = 'NEW_TASK';

  static const String pushChannelId = 'pushChannelId';
  static const String pushChannelName = 'Notifications about new news, tasks and etc.';

  static const String billingChannelId = 'billingChannelId';
  static const String billingChannelName = 'Billing reminder notifications';
}
