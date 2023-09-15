// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/services/timezone_service.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

abstract class LocalNotificationsService {
  Future<void> init();
  Future<void> enableBilling();
  Future<void> cancelBilling();
}

@LazySingleton(as: LocalNotificationsService, env: [Environment.dev, Environment.prod])
class LocalNotificationsServiceImpl extends LocalNotificationsService {
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

  static int billingId = 0;
  static const String billingChannelId = 'billingChannelId';
  static const String billingChannelName = 'billingChannelName';
  static const String billingChannelDescription = 'billingChannelDescription';

  @override
  Future<void> init() async {
    final InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );

    await _notificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (_) {},
    );
  }

  @override
  Future<void> enableBilling() async {
    const AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
      billingChannelId,
      billingChannelName,
      channelDescription: billingChannelDescription,
    );

    const NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
    );

    await _notificationsPlugin.zonedSchedule(
      billingId,
      S.current.notificationBilling,
      S.current.notificationBillingMessage,
      getIt<TimeZoneService>().getBillingSchedule(),
      notificationDetails,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
    );
  }

  @override
  Future<void> cancelBilling() async {
    await _notificationsPlugin.cancelAll();
  }
}
